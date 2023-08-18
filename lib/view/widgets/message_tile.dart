import 'package:flutter/material.dart';
import 'package:pet/view/widgets/custom_text.dart';

class MessageTile extends StatelessWidget {

  bool check;
  MessageTile({super.key, required this.check});

  

  @override
  Widget build(BuildContext context) {
    return check ? leftChatTile() : rightChatTile();
  }


  Widget rightChatTile()  {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 29,),        
        Expanded(
          child: Container(
            padding: const  EdgeInsets.all(10),
            decoration: const BoxDecoration(
              // color: Colors.yellow.withOpacity(0.1),
              color: Colors.greenAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              )
            ),
            child: CustomText(
              text: "Tekniko Global Private Limited is committed to ensuring that your privacy is protected. Should we ask you to provide certain information by which you can be identified when using this website, and then you can be assured that it will only be used in accordance with this privacy statement.",
            )
          )
        ),
      ],
    );

  }

  
  Widget leftChatTile()  {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration:  const BoxDecoration(
              // color: Colors.yellow.withOpacity(0.1),
              color: Colors.greenAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )
            ),
            child: CustomText(
              text: "Tekniko Global Private Limited is committed to ensuring that your privacy is protected. Should we ask you to provide certain information by which you can be identified when using this website, and then you can be assured that it will only be used in accordance with this privacy statement.",
            )
          )
        ),
        const SizedBox(width: 30,),
      ],
    );

  }



}

