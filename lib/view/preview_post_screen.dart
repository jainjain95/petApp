import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/service/post_service.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/widgets/custom_button.dart';
import 'package:pet/view/widgets/custom_text.dart';

class PreviewPostScreen extends StatelessWidget {
  String? uid;
  String? animalType;
  String? breed;
  String? gender;
  String? postDesc;
  PreviewPostScreen({super.key, this.uid, this.animalType, this.breed,this.gender, this.postDesc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: app_color,
      ),
      body: SingleChildScrollView(
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: horizontal_padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ////////////////////////////////////////     profile Detail
            Container(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    radius: 20,
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Shivam Jain",
                        fontSize: 16,
                        fontweight: FontWeight.w500,
                      ),
                      CustomText(
                        text: "Meerut UP",
                        fontSize: 10,
                        fontweight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: animalType,
              fontSize: 12,
              fontweight: FontWeight.w500,
              color: Colors.black45,
            ),
            Row(
              children: [
                CustomText(
                  text: breed,
                  fontSize: 12,
                  fontweight: FontWeight.w500,
                  color: Colors.black45,
                ),
                CustomText(
                  text: " ("+gender!+")",
                  fontSize: 12,
                  fontweight: FontWeight.w500,
                  color: Colors.black45,
                ),
              ],
            ),
            
          ],
        ),
          ),
            ////////////////////////////////////////////////////////////////   Post images
            Container(
              height: 350,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                  image: DecorationImage(
                    image: ExactAssetImage('images/Womens-Sandals.jpg'),
                    fit: BoxFit.fill,
                  )),
            ),
            const SizedBox(height: 10),
            /////////////////////////////////////////////////////     Post Description
            Container(
              padding: const EdgeInsets.all(5),
              width: double.maxFinite,
              // height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: postDesc
                  ),               
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        )
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(horizontal_padding),
        child: CustomButton(
            btnName: "Post",
            ontap: (){
              PostService.addPost(
                uid,
                animalType,
                breed,
                gender,
                postDesc
              );
                  //  Get.snackbar(
                  //               "Posted",
                  //               "This post is added to your account",
                  //               margin: EdgeInsets.all(10),
                  //               // icon: Icon(Icons.person, color: Colors.white),
                  //               snackPosition: SnackPosition.BOTTOM,
                  //               backgroundColor: Colors.pink,
                  //             );

              
            },
          ),
      ),
    );
  }
}