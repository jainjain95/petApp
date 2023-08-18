import 'package:flutter/material.dart';
import 'package:pet/view/chat_room_screen.dart';
import 'package:pet/view/widgets/custom_text.dart';


class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatRoomScreen()));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.yellowAccent,
            radius: 25,
            // child: Image.asset(
            //   'images/suraj.png',
            //   fit: BoxFit.fill,
            // )
          ),
          const SizedBox(width:10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: 'Shivam Jain',
                      color: Colors.black,
                      fontweight: FontWeight.w500,
                      fontSize: 18,
                    ),
                    const SizedBox(width:4),
                    CustomText(
                      text: '23 min',
                      color: Colors.grey,
                      fontweight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ],
                ),
                CustomText(
                  text: 'last message',
                  color: Colors.grey,
                  fontweight: FontWeight.w400,
                  // fontSize: 18,
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.pinkAccent,
            child: CustomText(
              text: "9+",
              color: Colors.white,
              fontSize: 12,
            )
          )
        ],
      ),
    );
  }
}