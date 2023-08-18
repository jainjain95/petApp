import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/preview_post_screen.dart';
import 'package:pet/view/widgets/custom_button.dart';
import 'package:pet/view/widgets/custom_text.dart';
import 'package:uuid/uuid.dart';

import '../util/app_data.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {

  var uuid = Uuid();
  late String animalType;
  late String breed;
  late String gender;
  TextEditingController postDesc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var v1 = uuid.v1();
    return Scaffold(
        appBar: AppBar(
          title: CustomText(text: "Create Post"),
          backgroundColor: app_color,
          actions: [
            IconButton(
                onPressed: () {
                  Get.dialog(alertDialog());
                },
                icon: Icon(Icons.cancel))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontal_padding, vertical: 2),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                DropdownButtonFormField2(
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(app_radious),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(app_radious),
                        borderSide:
                            BorderSide(color: Colors.black45, width: 1),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(app_radious),
                        borderSide:
                            BorderSide(color: Colors.black45, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(app_radious),
                        borderSide:
                            BorderSide(color: Colors.black45, width: 1),
                      )),
                  isExpanded: true,
                  hint: Text(
                    'Animal Type',
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black45,
                  ),
                  buttonHeight: 45,
                  buttonPadding: const EdgeInsets.only(left: 0, right: 10),
                  dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(app_radious)),
                  items: animalTypeDropdown
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item,
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                          ))
                      .toList(),
                  // validator: (value) {
                  //   if (value == null) {
                  //     return 'Please select gender.';
                  //   }
                  // },
                  onChanged: (value) {
                    animalType = value.toString();
                  },
                  onSaved: (value) {
                    animalType = value.toString();
                  },
                ),
                const SizedBox(height: 10),
                DropdownButtonFormField2(
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(app_radious),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(app_radious),
                        borderSide:
                            BorderSide(color: Colors.black45, width: 1),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(app_radious),
                        borderSide:
                            BorderSide(color: Colors.black45, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(app_radious),
                        borderSide:
                            BorderSide(color: Colors.black45, width: 1),
                      )),
                  isExpanded: true,
                  hint: Text(
                    'Breed',
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black45,
                  ),
                  buttonHeight: 45,
                  buttonPadding: const EdgeInsets.only(left: 0, right: 10),
                  dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(app_radious)),
                  items: breedDropdown
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item,
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                          ))
                      .toList(),
                  // validator: (value) {
                  //   if (value == null) {
                  //     return 'Please select gender.';
                  //   }
                  // },
                  onChanged: (value) {
                    breed = value.toString();
                  },
                  onSaved: (value) {
                    breed = value.toString();
                  },
                ),
                const SizedBox(height: 10),
                DropdownButtonFormField2(
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(app_radious),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(app_radious),
                        borderSide:
                            BorderSide(color: Colors.black45, width: 1),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(app_radious),
                        borderSide:
                            BorderSide(color: Colors.black45, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(app_radious),
                        borderSide:
                            BorderSide(color: Colors.black45, width: 1),
                      )),
                  isExpanded: true,
                  hint: Text(
                    'Gender',
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black45,
                  ),
                  buttonHeight: 45,
                  buttonPadding: const EdgeInsets.only(left: 0, right: 10),
                  dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(app_radious)),
                  items: genderDropdown
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item,
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                          ))
                      .toList(),
                  // validator: (value) {
                  //   if (value == null) {
                  //     return 'Please select gender.';
                  //   }
                  // },
                  onChanged: (value) {
                    gender = value.toString();
                  },
                  onSaved: (value) {
                    gender = value.toString();
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: postDesc,
                  maxLines: 8,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(500),
                  ],
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    hintText: "What's on your mind...",
                    hintStyle: TextStyle(color: Colors.black45),
                    border: InputBorder.none,
                  ),
                ),
                GridView.count(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 4.0,
                    children: List.generate(6, (index) {
                      return Card(
                        color: Colors.grey,
                        margin: EdgeInsets.all(0),
                        child: Center(child: Icon(Icons.add)),
                      );
                    })),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
              vertical: horizontal_padding, horizontal: horizontal_padding),
          child: CustomButton(
            btnName: "Preview Post",
            ontap: () {
              Get.to(PreviewPostScreen(
                uid: v1,
                animalType: animalType,
                breed: breed,
                gender: gender,
                postDesc: postDesc.text.trim().toString(),
              ));
            },
          ),
        )
        );
  }

  Widget alertDialog() {
    return AlertDialog(
      title: CustomText(text: "Cancle Post"),
      content: CustomText(
        text: "Do you really want to cancle the post",
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Get.back();
            Get.back();
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
