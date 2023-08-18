import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/view/otp_screen.dart';
import 'package:pet/view/widgets/custom_button.dart';
import 'package:pet/view/widgets/custom_text.dart';
import 'package:pet/view/widgets/custom_textfeild.dart';

class ForgotPasswordScreen extends StatefulWidget {
   const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                      text: 'Forgot Password',
                      color: Colors.black,
                      fontSize: 34,
                      // fontweight: FontWeight.w500,
                    ),
                    const SizedBox(height: 10),
                    CustomText(
                      text: 'enter your register email address or mobile\nno. to reset the password',
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
                          const CustomTextfeild(hinttext: 'OTP on mobile',),
                          const SizedBox(height: 10),
                          const CustomTextfeild(hinttext: 'Mobile no./Email Id',),
                          const SizedBox(height: 25),
                          CustomButton(
                            ontap: (){
                              Get.to(const OtpScreen());
                            },
                            btnName: 'SUBMIT',
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
