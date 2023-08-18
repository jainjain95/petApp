import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  String? text; 
  double? fontSize;
  FontWeight? fontweight;
  Color? color;
  TextOverflow? overflow;
  int? maxLines;
  final TextAlign? textalign;
  CustomText({super.key, this.text, this.color, this.fontSize, this.textalign, this.fontweight, this.overflow, this.maxLines} );

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: textalign ?? null ,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontweight,
        color: color,
        overflow: overflow
      ),
    );
  }
}