import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:pet/view/create_new_password_screen.dart';
import 'package:pet/view/widgets/custom_button.dart';
import 'package:pet/view/widgets/custom_text.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
        //     )),
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
                      text: 'Enter the otp',
                      color: Colors.black,
                      fontSize: 34,
                      // fontweight: FontWeight.w500,
                    ),
                    const SizedBox(height: 10),
                    CustomText(
                      text:
                          'otp sent on mobile no.\nor email id',
                      color: Colors.black,
                      fontSize: 12,
                      fontweight: FontWeight.w400,
                      textalign: TextAlign.left,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 40, horizontal: 0),
                      width: double.infinity,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          OTPTextField(
                            otpFieldStyle: OtpFieldStyle(
                              backgroundColor: Colors.transparent,
                              // backgroundColor: Colors.white,
                              borderColor: Colors.black26,
                              focusBorderColor: Colors.black26,
                              disabledBorderColor: Colors.grey,
                              enabledBorderColor: Colors.black26,
                              errorBorderColor: Colors.red,
                            ),
                            length: 4,
                            width: double.infinity,
                            fieldWidth: 50,
                            style: const TextStyle(fontSize: 17),
                            textFieldAlignment:
                                MainAxisAlignment.spaceAround,
                            fieldStyle: FieldStyle.box,
                            onCompleted: (pin) {
                              print("Completed: " + pin);
                            },
                          ),
                          // const SizedBox(height: 25),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     CustomText(
                          //       text: "Don't receive the OTP? ",
                          //       color: Colors.black,
                          //       fontSize: 12,
                          //       fontweight: FontWeight.w400,
                          //     ),
                          //     TextButton(
                          //       onPressed: (){
                                  
                          //       }, 
                          //       child: CustomText(
                          //         text: 'Resend',
                          //         color: Colors.black,
                          //         fontSize: 12,
                          //         fontweight: FontWeight.w400,
                          //       )
                          //     ),
                          //   ],
                          // ),
                          const SizedBox(height: 25),
                          CustomButton(
                            btnName: 'VERIFY',
                            ontap: (){
                              Get.to(const CreateNewPasswordScreen());
                            },
                          ),
                          const SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: "Don't receive the OTP? ",
                                color: Colors.black,
                                fontSize: 12,
                                fontweight: FontWeight.w400,
                              ),
                              TextButton(
                                onPressed: (){
                                  
                                }, 
                                child: CustomText(
                                  text: 'Resend',
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontweight: FontWeight.w400,
                                )
                              ),
                            ],
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
