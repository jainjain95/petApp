import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pet/model/post_model.dart';
import 'package:pet/view/widgets/Post_tile.dart';

import '../home_screen.dart';

class MyPetsTab extends StatefulWidget {
  const MyPetsTab({super.key});

  @override
  State<MyPetsTab> createState() => _MyPetsTabState();
}

class _MyPetsTabState extends State<MyPetsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: ListView.separated(
        itemCount: mpc.length,
        itemBuilder: (Buildcontext, index) {
          // return PostTile(
          //   who: true,
          // );
          return FutureBuilder<DocumentSnapshot>(
            future: FirebaseFirestore.instance.collection('all_posts').doc('india').collection('dog').doc(mpc[index]).get(),
            builder: (context, snapshot){

              if (snapshot.connectionState == ConnectionState.waiting){
                return const Center(child: CircularProgressIndicator());
              } else {
                if(snapshot.hasData){
                  DocumentSnapshot? datasnapshot = snapshot.data;
                  PostModel postData = PostModel.fromMap(
                                datasnapshot!.data() as Map<String, dynamic>);
                  return PostTile(
                    who: true,
                    postData: postData,
                  );
                } else if (snapshot.hasError){
                  return Text("An error occured");
                } else {
                  return Text("no data found");
                }
              }
            }
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 10);
        },
      ),
    );
  }
}
