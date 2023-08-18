import 'package:flutter/material.dart';

class CustomTextfeild extends StatelessWidget {
  final String hinttext;
  final TextEditingController? controller;
  const CustomTextfeild({super.key, required this.hinttext, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        autofocus: false,
        style: const TextStyle(
          fontSize: 15.0, 
          // color: Color(0xFFbdc6cf)
          // color: Colors.red
          
          // color: Colors.red
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          hintText: hinttext,
          hintStyle: TextStyle(fontSize: 15, color: Colors.black45),
          contentPadding:
              const EdgeInsets.only(left: 14.0,),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black45),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black45),
            borderRadius: BorderRadius.circular(10),
          ),
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black45, width: 1.0),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0),
          ),
          focusedErrorBorder:  UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black45, width: 1.0),
          ),
          //                             border:  OutlineInputBorder(
          //                               borderSide:
          //                                   BorderSide(color: Colors.white),
          //   borderRadius:
          //                                   BorderRadius.circular(25.7),
          // ),        
            ),
          ),
          decoration: const BoxDecoration(
            borderRadius:  BorderRadius.all( Radius.circular(30.0)),
            color: Colors.transparent
          ),
    );
  }
}
