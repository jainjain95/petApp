import 'package:flutter/material.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/widgets/chat_tile.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( left: horizontal_padding, right: horizontal_padding, top: 2),
      child: ListView.separated(
        itemCount: 20,
        itemBuilder: (BuildContext, index){
          return const ChatTile();
        },
        separatorBuilder: (context, index){
          return const SizedBox(height:10);
        }
      ),
    );
  }
}