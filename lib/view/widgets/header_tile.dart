import 'package:flutter/material.dart';
import 'package:pet/view/widgets/custom_text.dart';

class HeaderTile extends StatefulWidget {

  // Map<String, String> imgData;
  String? imgData;

  
  HeaderTile({super.key, required this.imgData});

  @override
  State<HeaderTile> createState() => _HeaderTileState();
}

class _HeaderTileState extends State<HeaderTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
                        
          },
          child: SizedBox(
            height: 70,
            width: 70,
            child: Image.asset(widget.imgData.toString(), fit: BoxFit.fill,),
            ),
                    ),
                    // CustomText(
                    //   text: widget.imgData.n,
                    //   fontSize: 12,
                    //   color: Colors.black,
                    // )
      ],
    );
  }
}