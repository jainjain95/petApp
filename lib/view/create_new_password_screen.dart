import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/view/login_screen.dart';
import 'package:pet/view/widgets/custom_button.dart';
import 'package:pet/view/widgets/custom_text.dart';
import 'package:pet/view/widgets/custom_textfeild.dart';

class CreateNewPasswordScreen extends StatefulWidget {
   const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Container(
        //     width: double.infinity,
        //     height: double.infinity,
        //     color: Colors.white,
        //     child: Image.asset(
        //       'images/IMG_20230107_215448.jpg',
        //       fit: BoxFit.fill,
        //       // opacity: const AlwaysStoppedAnimation(.5),
        //     )
        // ),
        Scaffold(
          // backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: const IconThemeData(
              color: Colors.black, //change your color here
            ),
          ),
          body: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: 'Create New\nPassword',
                      color: Colors.black,
                      fontSize: 34,
                      // fontweight: FontWeight.w500,
                    ),
                    const SizedBox(height: 10),
                    CustomText(
                      text: 'password must be storng and don not\nshare with anyone',
                      color: Colors.black,
                      fontSize: 12,
                      fontweight: FontWeight.w400,
                      textalign: TextAlign.left,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 0),
                      width: double.infinity,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const CustomTextfeild(hinttext: 'New Password',),
                          const SizedBox(height: 10),
                          const CustomTextfeild(hinttext: 'Confirm Password',),
                          const SizedBox(height: 25),
                          CustomButton(
                            btnName: 'RESET',
                            ontap: (){
                              Get.to(const LogInScreen());
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
