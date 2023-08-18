import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pet/model/post_model.dart';
import 'package:pet/service/post_service.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/widgets/Post_tile.dart';
import 'package:pet/view/widgets/header_tile.dart';
import 'package:pet/view/widgets/sponsered_ads.dart';

import '../widgets/shimmer/shimmer_post_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> img = [
    "images/full_dog.png",
    "images/full_cat.png",
    "images/full_rabbit.png",
    "images/full_harmster.png",
    "images/full_monkey.png",
    "images/full_fish.png"
  ];

  List<Map<String, String>> image = [
    {"img": "images/full_dog.png", "name": "Dog"},
    {"img": "images/full_cat.png", "name": "Cat"},
    {"img": "images/full_rabbit.png", "name": "rabbit"},
    {"img": "images/full_harmster.png", "name": "harmster"},
    {"img": "images/full_monkey.png", "name": "moneky"},
    {"img": "images/full_fish.png", "name": "Fish"}
  ];
  List<int> imgCount = [1, 3, 2, 1, 3, 2, 3, 1, 2, 1, 2, 3, 2, 1, 2, 3, 1];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    print(
        "000000000000000000000000000000000000000000000000000000000000000000000");
    return Padding(
      padding: const EdgeInsets.only(
          left: horizontal_padding, right: horizontal_padding, bottom: 0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: 70,
            width: double.infinity,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: img.length,
              itemBuilder: (buidcontext, index) {
                return HeaderTile(
                  imgData: img[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 8);
              },
            ),
          ),
          const SizedBox(height: 10),
          // Tab[index],
          Expanded(
              child: FutureBuilder(
                  future: FirebaseFirestore.instance
                      .collection("all_posts")
                      .doc('india')
                      .collection("dog")
                      .get(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState != ConnectionState.waiting) {
                      if (snapshot.hasData) {
                        // QuerySnapshot datasnapshot =
                        //     snapshot.data as QuerySnapshot;
                        List<QueryDocumentSnapshot> datasnapshot = snapshot.data!.docs;
                        return ListView.separated(
                          itemCount: datasnapshot.length,
                          itemBuilder: (Buildcontext, index) {
                            PostModel postData = PostModel.fromMap(
                                datasnapshot[index].data()
                                    as Map<String, dynamic>);
                            return PostTile(
                              postData: postData,
                              imgCount: 1,
                              who: false,
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            if ((index + 1) % 5 == 0) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: SponseredAds(),
                              );
                            } else {
                              return const SizedBox(height: 10);
                            }
                          },
                        );
                      } else if (snapshot.hasError) {
                        return Center(child: Text("En error occured"));
                      } else {
                        return Center(child: Text("No data to show"));
                      }
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  })),
        ],
      ),
    );

    //////////////////////////////////     test new ui
    // return Padding(
    //   // padding: const EdgeInsets.only(left: 15, right: 15),
    //   padding: const EdgeInsets.only(left: 0, right: 0),
    //   child: DefaultTabController(
    //     length: 6,
    //     child: Column(
    //       children: <Widget>[
    //         ButtonsTabBar(
    //           height: 70,
    //           radius: 8,
    //           contentPadding: const EdgeInsets.only(left: 0),
    //           backgroundColor: Colors.transparent,
    //           unselectedBackgroundColor: Colors.white,
    //           // unselectedLabelStyle: TextStyle(color: Colors.black),
    //           buttonMargin: const EdgeInsets.only(right: 10),
    //           labelStyle:
    //               const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    //           tabs:  [
    //             Tab(
    //               child: HeaderTile(imgData: img[0],)
    //             ),
    //             Tab(
    //               child: HeaderTile(imgData: img[1],)
    //             ),
    //             Tab(
    //               child: HeaderTile(imgData: img[2],)
    //             ),
    //             Tab(
    //               child: HeaderTile(imgData: img[3],)
    //             ),
    //             Tab(
    //               child: HeaderTile(imgData: img[4],)
    //             ),
    //             Tab(
    //               child: HeaderTile(imgData: img[5],)
    //             ),

    //           ],
    //         ),
    //         const SizedBox(height: 10,),
    //         Expanded(
    //           child: TabBarView(
    //             children: <Widget>[
    //               Container(color: Colors.green),
    //               Container(color: Colors.yellow),
    //               Container(color: Colors.yellowAccent),
    //               Container(color: Colors.greenAccent),
    //               Container(color: Colors.orange),
    //               Container(color: Colors.orangeAccent)
    //               // AcceptedTab(),
    //               // ReceivedTab(),
    //               // SentIntTab(),
    //               // ShortlistedTab(),
    //               // DeclinedTab()
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
