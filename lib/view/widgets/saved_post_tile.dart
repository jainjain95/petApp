import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/widgets/custom_text.dart';

import '../post_detail_screen.dart';

class SavedPostTile extends StatelessWidget {
  const SavedPostTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                onTap: (){
                  Get.to( PostDetailScreen());
                },
                child: Card(
                    color: app_color,
                    margin: EdgeInsets.all(0),
                    // child: Center(child: Icon(Icons.add)),
                    child: Column(
                      children: [
                        Container(
                          // color: app_color,
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.redAccent,
                                radius: 15,
                                backgroundImage: AssetImage("images/arpit.png"),
                              ),
                              const SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "Shivam Jain",
                                    fontSize: 12,
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
                            ],
                          ),
                        ),
                        Expanded(
                          child: Image.asset("images/post.jpg", fit: BoxFit.fill,),
                        ),
                        const SizedBox(height: 10,)
                      ],
                    )),
              );
  }
}