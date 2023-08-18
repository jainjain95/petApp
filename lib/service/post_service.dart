import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/model/post_model.dart';
import 'package:pet/view/home_screen.dart';

class PostService {


  static addPost(String? uid, String? animalType, String? breed, String? gender,
      String? postDesc) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    try {
      PostModel post = PostModel(
        uid: uid,
        animalType: animalType,
        breed: breed,
        gender: gender,
        postDesc: postDesc,
      );
      print("start");
      ///////////////////////////////////////   add post document to the specific animal collection 
      await FirebaseFirestore.instance
          .collection("all_posts")
          .doc('india')
          .collection("dog")
          .doc(uid)
          .set(post.toMap())
          .then((value) async {
        print("post saved in dog collection");
        ///////////////////////////////////////   add post document id to the user myPosts list
        await firestore
            .collection("all_posts")
            .doc('india')
            .collection("all")
            .doc(uid)
            .set({'post_id': uid})
            .then((value) async => {
                  print("post saved in all collection"),
                  await firestore
                      .collection("user")
                      .doc('MphPHP790ZaaXnMPLDJk7n8PLFr2')
                      .update({
                    'myPost': FieldValue.arrayUnion([uid]),
                  })
                })
            .then((value) {
              print("post saved in user app post list");
              Get.to(const HomeScreen())!.then((value) => {
                    Get.snackbar(
                      "Posted",
                      "This post is added to your account",
                      margin: EdgeInsets.all(10),
                      // icon: Icon(Icons.person, color: Colors.white),
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.pink,
                    )
                  });
            });
      });
    } catch (e) {
      print(e);
    }
  }

  static Future<dynamic> getPost() async{
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    var data = await firestore.collection("all_posts").doc('india').collection("dog").snapshots();
    return data;
  }



}
