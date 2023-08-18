import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/widgets/custom_button.dart';
import 'package:pet/view/widgets/custom_text.dart';

class PostReportScreen extends StatelessWidget {
  PostReportScreen({super.key});

  final List<String> animalType = [
    'Dog',
    'Cat',
    'rabbit',
    'harmster',
    'monkey',
    'fish'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffffd8dd),
          title: Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.redAccent,
                radius: 20,
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Shivam Jain",
                    fontSize: 18,
                    fontweight: FontWeight.w500,
                    // color: Colors.white,
                  ),
                  CustomText(
                    text: "Meerut, UP",
                    fontSize: 12,
                    fontweight: FontWeight.w400,
                    // color: Colors.white70,
                  ),
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          reverse: true,
          children: [
            const Padding(
              padding: EdgeInsets.all(horizontal_padding),
              child: CustomButton(btnName: "Report"),
            ),
            const SizedBox(
              height: 5,
            ),
            Card(
                margin: EdgeInsets.symmetric(horizontal: horizontal_padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Dog",
                            fontSize: 12,
                            fontweight: FontWeight.w500,
                            color: Colors.black45,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: "German Shephered",
                                fontSize: 12,
                                fontweight: FontWeight.w500,
                                color: Colors.black45,
                              ),
                              CustomText(
                                text: " (" "Male" ")",
                                fontSize: 12,
                                fontweight: FontWeight.w500,
                                color: Colors.black45,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ////////////////////////////////////////////////////////////////   Post images
                    Container(
                      height: 350,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          image: DecorationImage(
                            image: ExactAssetImage('images/Womens-Sandals.jpg'),
                            fit: BoxFit.fill,
                          )),
                    ),
                    const SizedBox(height: 10),
                    /////////////////////////////////////////////////////     Post Description
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: double.maxFinite,
                      // height: 50,
                      child: Column(
                        children: [
                          CustomText(
                              text:
                                  "We provide complete development services according to latest trends and technology. Skills jyu juy gyy Web Development"
                                  "We provide complete development services according to latest trends and technology. Skills jyu juy gyy Web Development "
                                  "We provide complete development services according to latest trends and technology. Skills jyu juy gyy Web Development "
                                  "We provide complete development services according to latest trends and technology. Skills jyu juy gyy Web Development "
                                  "We provide complete development services according to latest trends and technology. Skills jyu juy gyy Web Development "
                                  "We provide complete development services according to latest trends and technology. Skills jyu juy gyy Web Development "),
                          const SizedBox(height: 20),
                          ////////////////////////////////////////////////////////   Report summry
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CustomText(
                              text: "About Report",
                              fontweight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(height: 10),
                          DropdownButtonFormField2(
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(app_radious),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(app_radious),
                                  borderSide: BorderSide(
                                      color: Colors.black45, width: 1),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(app_radious),
                                  borderSide: BorderSide(
                                      color: Colors.black45, width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(app_radious),
                                  borderSide: BorderSide(
                                      color: Colors.black45, width: 1),
                                )),
                            isExpanded: true,
                            hint: Text(
                              'Animal Type',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black45,
                            ),
                            buttonHeight: 45,
                            buttonPadding:
                                const EdgeInsets.only(left: 0, right: 10),
                            dropdownDecoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(app_radious)),
                            items: animalType
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
                            // onSaved: (value) {
                            //   selectedValue = value.toString();
                            // },
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            maxLines: 8,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(500),
                            ],
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              hintText: "Reason behind the report...",
                              hintStyle: TextStyle(color: Colors.black45),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black45),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(app_radious))),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black45),
                                borderRadius:
                                    BorderRadius.circular(app_radious),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            // const SizedBox(height: 5,),
            // const Padding(
            //   padding: EdgeInsets.all(horizontal_padding),
            //   child: CustomButton(
            //     btnName: "Report"
            //   ),
            // )
          ],
        ));
  }
}
