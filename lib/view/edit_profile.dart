import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/widgets/custom_button.dart';
import 'package:pet/view/widgets/custom_textfeild.dart';

import 'widgets/custom_text.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: CustomText(text: "Update Profile"),
          backgroundColor: app_color,
        ),
        body: const Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                CustomTextfeild(
                  hinttext: 'User name',
                ),
                SizedBox(height: 10),
                CustomTextfeild(
                  hinttext: 'State',
                ),
                SizedBox(height: 10),
                CustomTextfeild(
                  hinttext: 'City',
                ),
              ],
            )
        ),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
              vertical: horizontal_padding, horizontal: horizontal_padding),
          child: CustomButton(
            btnName: "Update",
            ontap: () {
              // Get.to(EditProfileScreen());
            },
          ),
        )
    );
  }
}
