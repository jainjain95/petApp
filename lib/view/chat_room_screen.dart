import 'package:flutter/material.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/widgets/custom_text.dart';
import 'package:pet/view/widgets/message_tile.dart';


class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({super.key});

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {

  List<bool> demodata = [
    true,true,true,false,true,false,true,true,false,true,false,true,true,false,true,false,false,true,false,false,false,true,false,false,false,false,true,false,true,false,true
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: app_color,
          elevation: 0,
          title: CustomText(text: "Shivam jain", color: Colors.black,),
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontal_padding),
          child: Column(
            children: [
              Expanded(
                  child: ListView.separated(
                itemCount: demodata.length,
                reverse: true,
                itemBuilder: (Buildcontexxt, index) {
                  return MessageTile(check: demodata[index],);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 10
                  );
                },
              )),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  // TextFormField(),
                  const SizedBox(width: 2),
                  IconButton(
                    icon: const  Icon(Icons.send_outlined),
                    iconSize: 25,
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ));
  }
}
