import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:launch_review/launch_review.dart';
import 'package:pet/service/authservice.dart';
import 'package:pet/view/home_screen.dart';
import 'package:pet/view/saved_posts_screen.dart';
import 'package:pet/view/widgets/custom_text.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../util/app_ui_data.dart';
import '../edit_profile.dart';

class UserProfileTab extends StatefulWidget {
  const UserProfileTab({super.key});

  @override
  State<UserProfileTab> createState() => _UserProfileTabState();
}

class _UserProfileTabState extends State<UserProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizontal_padding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            Row(
              children: [
                Stack(
                  children: [
                    Positioned(

                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: app_color
                      ),
                    ),
                    CircleAvatar(
                      radius: 64,
                      backgroundColor: app_color,
                      child: CircleAvatar(
                        radius: 61,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 58,
                          backgroundColor: app_color,
                          backgroundImage: AssetImage("images/arpit.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: app_color,
                        child: IconButton(
                          onPressed: (){}, 
                          icon: Icon(Icons.edit, color: Colors.white, size: 22,)
                        )
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userData?.nameName ?? "",
                      // text: "kjhg",
                      fontweight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    // SizedBox(height: 10),
                    CustomText(
                      text: userData?.email ?? "",
                      fontSize: 16,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    CustomText(
                      text: userData?.mobNo ?? "",
                      // text: "7060419301",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      fontSize: 14,
                    ),
                    CustomText(
                      text: "meerut, up",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      fontSize: 14,
                    ),
                  ],
                ),
              ],
            ),
            // const CircleAvatar(
            //   radius: 66,
            //   backgroundColor: Colors.yellow,
            //   child: CircleAvatar(
            //     radius: 63,
            //     backgroundColor: Colors.white,
            //     child: CircleAvatar(
            //       radius: 60,
            //       backgroundColor: Colors.yellow,
            //     ),
            //   ),
            // ),
            // CustomText(
            //   text: "Shivam Jain",
            //   fontweight: FontWeight.bold,
            //   fontSize: 25,
            // ),
            // // SizedBox(height: 10),
            // CustomText(
            //   text: "MEERUT, UP",
            //   // fontweight: FontWeight.w500,
            //   fontSize: 15,
            // ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CustomText(
                          text: userData?.posts?.length.toString() ?? "0",
                          fontSize: 24,
                          fontweight: FontWeight.w600,
                          color: Colors.pinkAccent),
                      CustomText(
                        text: 'Total Post(s)',
                        fontSize: 14,
                        fontweight: FontWeight.w400,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                    child: VerticalDivider(
                        indent: 1, thickness: 2, color: Colors.grey),
                  ),
                  Column(
                    children: [
                      CustomText(
                          text: '88',
                          fontSize: 24,
                          fontweight: FontWeight.w600,
                          color: Colors.pinkAccent),
                      CustomText(
                        text: 'Total Likes',
                        fontSize: 14,
                        fontweight: FontWeight.w400,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.to(const SavedPostsScreen());
              },
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const Icon(Icons.abc),
                    const SizedBox(width: 5),
                    CustomText(
                      text: 'Saved Post(s)',
                      fontSize: 14,
                      fontweight: FontWeight.w400,
                    )
                  ],
                ),
              )),
            ),
            GestureDetector(
              onTap: () {
                Get.to(const EditProfileScreen());
              },
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const Icon(Icons.abc),
                    const SizedBox(width: 5),
                    CustomText(
                      text: 'Edit Profile',
                      fontSize: 14,
                      fontweight: FontWeight.w400,
                    )
                  ],
                ),
              )),
            ),
            GestureDetector(
              onTap: (){
                 Share.share(
                   "bnmjnknknk",
                   subject: "bkjvjvj"
                 );
              },
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const Icon(Icons.abc),
                    const SizedBox(width: 5),
                    CustomText(
                      text: 'Share App',
                      fontSize: 14,
                      fontweight: FontWeight.w400,
                    )
                  ],
                ),
              )),
            ),
            GestureDetector(
              onTap: (){
                LaunchReview.launch(
                      androidAppId: "com.doubleqube.quizrank"
                    );
              },
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const Icon(Icons.abc),
                    const SizedBox(width: 5),
                    CustomText(
                      text: 'Rate App',
                      fontSize: 14,
                      fontweight: FontWeight.w400,
                    )
                  ],
                ),
              )),
            ),
            GestureDetector(
              onTap: (){
                launch("https://sites.google.com/view/quizrank/home");
              },
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const Icon(Icons.abc),
                    const SizedBox(width: 5),
                    CustomText(
                      text: 'Terms & Conditions',
                      fontSize: 14,
                      fontweight: FontWeight.w400,
                    )
                  ],
                ),
              )),
            ),
            GestureDetector(
              onTap: (){
                launch("https://sites.google.com/view/quizrank/home");
              },
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const Icon(Icons.abc),
                    const SizedBox(width: 5),
                    CustomText(
                      text: 'Privacy Policy',
                      fontSize: 14,
                      fontweight: FontWeight.w400,
                    )
                  ],
                ),
              )),
            ),
            GestureDetector(
              onTap: (){
                Get.bottomSheet(
                            BottomSheet(
                              onClosing: (){},
                              showDragHandle: true,
                              enableDrag: false,
                              shape: const RoundedRectangleBorder(
      	                        borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25.0),
                                ),
                              ),
                              builder: (context) {
                                return Container(
                                  width: double.maxFinite,
                                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomText(
                                          text: 'Contact Us On',
                                        ),
                                        CustomText(
                                          text: 'Email:- contact@patpaw.com',
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }
                            )
                          );
              },
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const Icon(Icons.abc),
                    const SizedBox(width: 5),
                    CustomText(
                      text: 'Customer Support',
                      fontSize: 14,
                      fontweight: FontWeight.w400,
                    )
                  ],
                ),
              )),
            ),

            GestureDetector(
              onTap: (){
                Get.dialog(alertDialog());
              },
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    const Icon(Icons.abc),
                    const SizedBox(width: 5),
                    CustomText(
                      text: 'Logout',
                      fontSize: 14,
                      fontweight: FontWeight.w400,
                    )
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    ));
  }

  Widget alertDialog() {
    return AlertDialog(
      title: CustomText(text: "Logout"),
      content: CustomText(
        text: "Do you really want to logout",
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            AuthService.signOut();
          },
          child: CustomText(
            text: "Yes",
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: CustomText(
            text: "No",
          ),
        )
      ],
    );
  }

  Widget abcustomCardTile(String? title) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          const Icon(Icons.abc),
          const SizedBox(width: 5),
          CustomText(
            text: title,
            fontSize: 14,
            fontweight: FontWeight.w400,
          )
        ],
      ),
    ));
  }
}
