import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/model/post_model.dart';
import 'package:pet/view/chat_room_screen.dart';
import 'package:pet/view/person_profile_Screen.dart';
import 'package:pet/view/post_detail_screen.dart';
import 'package:pet/view/widgets/custom_text.dart';

import '../post_report_screen.dart';

class PostTile extends StatefulWidget {
  int? imgCount;
  bool? who;
  PostModel? postData; //   true means my post tile
  PostTile({super.key, this.imgCount, this.who, this.postData});

  @override
  State<PostTile> createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  bool test = true;

  @override
  Widget build(BuildContext context) {
    print("1111111111111111111111111111111111111111111111111111");
    return Card(
      margin: EdgeInsets.only(bottom: 2, top: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ////////////////////////////////////////     profile Detail
          GestureDetector(
            onTap: (){
              Get.to(PersonProfileScreen());
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    radius: 20,
                    backgroundImage: AssetImage("images/arpit.png"),
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
                  const Spacer(),
                  widget.who == true
                      ? SizedBox()
                      : PopupMenuButton(
                        // padding: EdgeInsets.all(0),
                          onSelected: (value) {
                            if (value == "save") {
                              Get.snackbar(
                                "Saved",
                                "Post saved to your account",
                                margin: EdgeInsets.all(10),
                                // icon: Icon(Icons.person, color: Colors.white),
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: Colors.pink,
                              );
                            } else if (value == "block") {
                              Get.snackbar(
                                "Blocked",
                                "Now you can't see there posts and msg, vice versa",
                                margin: EdgeInsets.all(10),
                                // icon: Icon(Icons.person, color: Colors.white),
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: Colors.pink,
                              );
                            } else if (value == "report") {
                              Get.to(PostReportScreen());
                            }
                          },
                          itemBuilder: (context) => [
                                PopupMenuItem(
                                    value: "save",
                                    child: CustomText(
                                      text: "Save",
                                    )),
                                PopupMenuItem(
                                    value: "block",
                                    child: CustomText(
                                      text: "Block",
                                    )),
                                PopupMenuItem(
                                    value: "report",
                                    child: CustomText(
                                      text: "Report",
                                    )),
                              ])
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                CustomText(
                  text: widget.postData!.breed.toString(),
                  fontSize: 12,
                  fontweight: FontWeight.w500,
                  color: Colors.black45,
                ),
                CustomText(
                  text: " (" +widget.postData!.gender.toString()+ ")",
                  fontSize: 12,
                  fontweight: FontWeight.w500,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
          ////////////////////////////////////////////////////////////////   Post images
          GestureDetector(
            onTap: () {
              Get.to(const PostDetailScreen());
            },
            // child: collage_three(),
            child: widget.imgCount == 1
                ? collage_one()
                : widget.imgCount == 2
                    ? collage_two()
                    : collage_three(),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: CustomText(
              text: "14 feb 23",
              fontSize: 10,
              fontweight: FontWeight.w400,
              color: Colors.black45,
            ),
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
                  text:widget.postData!.postDesc.toString(),
                  maxLines: test ? 2 : null,
                  overflow: test ? TextOverflow.ellipsis : null,
                  // style: DefaultTextStyle.of(context).style,
                ),
                const SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          test = !test;
                        });
                      },
                      child: CustomText(
                        text: test ? "see more" : "see less",
                        fontweight: FontWeight.bold,
                        color: Colors.black26,
                      )),
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.star, size: 20, color: Colors.orange),
                    CustomText(text: "129"),
                    const SizedBox(width: 5),
                    CustomText(
                      text: "likes",
                      color: Colors.black38,
                    ),
                    // const SizedBox(width: 10),
                    // const Icon(Icons.message_outlined,
                    //     size: 16, color: Colors.green),
                    // CustomText(text: "129"),
                    // const SizedBox(width: 5),
                    // CustomText(
                    //   text: "comments",
                    //   color: Colors.black38,
                    // ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(height: 5,),
          bottomSimple()
        ],
      ),
    );
  }

  Widget collage_one() {
    return SizedBox(
      height: 300,
      width: double.maxFinite,
      child: Image.asset(
        'images/post.jpg',
        fit: BoxFit.fill,
      ),
    );
  }

  Widget collage_two() {
    return SizedBox(
      height: 280,
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              'images/post.jpg',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 1),
          Expanded(
            child: Image.asset(
              'images/post.jpg',
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }

  Widget collage_three() {
    return SizedBox(
      height: 380,
      width: double.maxFinite,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              'images/post.jpg',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 1),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  'images/post.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(width: 1),
              Expanded(
                  child: Stack(children: [
                Container(
                  child: Image.asset(
                    'images/post.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                    color: Colors.black.withOpacity(0.2),
                    child: Center(
                        child: CustomText(
                      text: "+1",
                      // fontweight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ))),
              ]))
            ],
          ))
        ],
      ),
    );
  }

  Widget bottomSimple() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                const Icon(Icons.star_border_rounded,
                    size: 20, color: Colors.orange),
                const SizedBox(height: 2),
                CustomText(
                  text: 'Like',
                  fontSize: 9,
                  fontweight: FontWeight.w500,
                )
              ],
            ),
            // Column(
            //   children: [
            //     const Icon(Icons.ios_share, size: 20, color: Colors.indigo),
            //     const SizedBox(height: 2),
            //     CustomText(
            //       text: 'Comment',
            //       fontSize: 9,
            //       fontweight: FontWeight.w500,
            //     )
            //   ],
            // ),
            widget.who == true
                ? GestureDetector(
                    onTap: () {
                      Get.dialog(alertDialog());
                    },
                    child: Column(
                      children: [
                        const Icon(Icons.delete, size: 20, color: Colors.green),
                        const SizedBox(height: 2),
                        CustomText(
                          text: 'Delete',
                          fontSize: 9,
                          fontweight: FontWeight.w500,
                        )
                      ],
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      Get.to(ChatRoomScreen());
                    },
                    child: Column(
                      children: [
                        const Icon(Icons.message,
                            size: 20, color: Colors.indigo),
                        const SizedBox(height: 2),
                        CustomText(
                          text: 'Message',
                          fontSize: 9,
                          fontweight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
            GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  const Icon(Icons.ios_share,
                      size: 20, color: Colors.red),
                  const SizedBox(height: 2),
                  CustomText(
                    text: 'Share',
                    fontSize: 9,
                    fontweight: FontWeight.w500,
                  )
                ],
              ),
            ),
          ],
        ));
  }

  Widget alertDialog() {
    return AlertDialog(
      title: CustomText(text: "Delete Post"),
      content: CustomText(
        text: "Do you really want to delete this post",
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            // Get.back();Get.back();
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
}
