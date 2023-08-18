import 'dart:ui';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/home_screen.dart';
import 'package:pet/view/widgets/custom_button.dart';
import 'package:pet/view/widgets/custom_text.dart';
import 'package:pet/view/widgets/custom_textfeild.dart';

import '../service/authservice.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final List<String> country = ['India', 'Pakistan', 'US', 'UK'];

  TextEditingController emailcnt = TextEditingController();
  TextEditingController passcnt = TextEditingController();
  TextEditingController userNamecnt = TextEditingController();
  TextEditingController mobNocnt = TextEditingController();
  late String selectedCountry;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Container(
        //     width: double.infinity,
        //     height: double.infinity,
        //     color: Colors.white,
        //     child: Image.asset(
        //       'images/app_bg.png',
        //       fit: BoxFit.fill,
        //       // opacity: const AlwaysStoppedAnimation(.5),
        //     )),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: const IconThemeData(
              color: Colors.black, //change your color here
            ),
          ),
          body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                              text: 'Create Account',
                              color: Colors.black,
                              fontSize: 34,
                              // fontweight: FontWeight.w500,
                            ),
                            const SizedBox(height: 10),
                            CustomText(
                              text:
                                  'and start meeting new friends\narround the world',
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
                          width: double.infinity,
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomTextfeild(
                                controller: userNamecnt,
                                hinttext: 'User name',
                              ),
                              const SizedBox(height: 10),
                              // const CustomTextfeild(
                              //   hinttext: 'Name',
                              // ),
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
                                  BorderSide(color: Colors.grey, width: 1),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(app_radious),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(app_radious),
                              borderSide:
                                  BorderSide(color: Colors.black54, width: 1),
                            )),
                        isExpanded: true,
                        hint: Text(
                          'Country',
                          style: TextStyle(fontSize: 15, color: Colors.black45),
                        ),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black45,
                        ),
                        buttonHeight: 45,
                        buttonPadding:
                            const EdgeInsets.only(left: 0, right: 10),
                        dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(app_radious)),
                        items: country
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
                        onChanged: (value) {},
                        onSaved: (value) {
                          selectedCountry = value.toString();
                        },
                      ),
                              const SizedBox(height: 10),
                              CustomTextfeild(
                                controller: emailcnt,
                                hinttext: 'Email',
                              ),
                              const SizedBox(height: 10),
                              CustomTextfeild(
                                controller: mobNocnt,
                                hinttext: 'Mobile no.',
                              ),
                              const SizedBox(height: 10),
                              CustomTextfeild(
                                controller: passcnt,
                                hinttext: 'Password',
                              ),
                              const SizedBox(height: 25),
                              CustomButton(
                                ontap: (){
                                  // Get.off(const HomeScreen());
                                  AuthService.signUp(
                                    userNamecnt.text.trim().toString(), 
                                    "ind",
                                    emailcnt.text.trim().toString(),
                                    mobNocnt.text.trim().toString(),
                                    passcnt.text.trim().toString()
                                  );                           
                                },
                                btnName: 'SIGN UP',
                              ),
                              const SizedBox(height: 40),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    text: "Alreadt have an account? ",
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontweight: FontWeight.w400,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: CustomText(
                                        text: 'SIGN IN',
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontweight: FontWeight.w400,
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
