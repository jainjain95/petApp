import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/service/authservice.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/forgot_password_screen.dart';
import 'package:pet/view/home_screen.dart';
import 'package:pet/view/register_screen.dart';
import 'package:pet/view/widgets/custom_button.dart';
import 'package:pet/view/widgets/custom_text.dart';
import 'package:pet/view/widgets/custom_textfeild.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  TextEditingController emailcnt = TextEditingController();
  TextEditingController passcnt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Welcome',
                  // color: app_color,
                  fontSize: 34,

                  // fontweight: FontWeight.w500,
                ),
                const SizedBox(height: 10),
                CustomText(
                  text: 'login with your account\nand continiue searching',
                  color: Colors.black,
                  fontSize: 12,
                  fontweight: FontWeight.w400,
                  textalign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 40, horizontal: 0),
                      // height: 200,
                      width: double.infinity,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextfeild(
                            controller: emailcnt,
                            hinttext: 'Mobile no./Email Id',
                          ),
                          const SizedBox(height: 10),
                          CustomTextfeild(
                            controller: passcnt,
                            hinttext: 'Password',
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                                onPressed: () {
                                  Get.to(const ForgotPasswordScreen());
                                },
                                child: CustomText(
                                  text: 'forgot Password?',
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontweight: FontWeight.w400,
                                )),
                          ),
                          const SizedBox(height: 25),
                          CustomButton(
                            ontap: () {
                              Get.off(const HomeScreen());
                              // AuthService.login(
                              //   emailcnt.text.trim().toString(),
                              //  passcnt.text.trim().toString()
                              //  );
                            },
                            btnName: 'LOGIN',
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: "Don't have an account? ",
                                color: Colors.black,
                                fontSize: 12,
                                fontweight: FontWeight.w400,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Get.to(const RegisterScreen());
                                  },
                                  child: CustomText(
                                    text: 'REGISTER',
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontweight: FontWeight.w400,
                                  )),
                            ],
                          ),
                          CustomText(
                            text: "OR",
                            color: Colors.black,
                            fontSize: 12,
                            fontweight: FontWeight.w400,
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: (){
                              AuthService.facebookLogin();
                            },
                            child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(app_radious))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.facebook_outlined,color: Colors.white,),
                                    SizedBox(width:5),
                                    CustomText(
                                      textalign: TextAlign.center,
                                      text: "Login with Facebook",
                                      color: Colors.white,
                                      fontSize: btn_font_size,
                                    ),
                                  ],
                                )),
                          ),
                              const SizedBox(height: 15),
                          GestureDetector(
                            onTap: (){
                              AuthService.googleLogin();
                            },
                            child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(app_radious))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.facebook,color: Colors.white,),
                                    SizedBox(width:5),
                                    CustomText(
                                      textalign: TextAlign.center,
                                      text: "Login with Google",
                                      color: Colors.white,
                                      fontSize: btn_font_size,
                                    ),
                                  ],
                                )),
                          ),
                            
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
