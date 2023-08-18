import 'package:flutter/material.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String btnName;
  final Function()? ontap;
  const CustomButton({super.key, required this.btnName,  this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(app_radious)),
          // gradient: LinearGradient(
          //     colors: [
          //       Colors.blueAccent.withOpacity(0.5),
          //       Colors.pinkAccent.withOpacity(0.5),
          //     ],
          //     begin: const FractionalOffset(0.0, 0.0),
          //     end: const FractionalOffset(1.0, 0.0),
          //     stops: [0.0, 1.0],
          //     tileMode: TileMode.clamp),
          color: Colors.pinkAccent
        ),
        child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: CustomText(
              textalign: TextAlign.center,
              text: btnName,
              color: Colors.white,
              fontSize: btn_font_size,
            )),
      ),
    );
 
  }
}
