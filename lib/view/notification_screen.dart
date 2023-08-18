import 'package:flutter/material.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/widgets/custom_text.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: app_color,
          elevation: 0,
          // centerTitle: true,
          title: CustomText(
                              text: "Notifications",
                              color: Colors.black
                            ),
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
          child: ListView.separated(
            itemCount: 50,
            itemBuilder: (Buildcontext, index) {
              return Container(
                height: 60,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Expanded(
                        // width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "new members",
                              fontSize: 16,
                            ),
                            CustomText(
                              text: "we find new mwmbers for you ",
                              fontSize: 12,
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          const Icon(Icons.notification_important_sharp, size: 15,),
                          const SizedBox(height: 2,),
                          CustomText(
                            text: '5d',
                            fontSize: 10,
                          ),
                        ],
                      )
                    ],
                  )
                  // child: Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     CustomText(
                  //       text: "new members",
                  //       fontSize: 20,
                  //     ),
                  //     CustomText(
                  //       text: "we find new mwmbers for you",
                  //       fontSize: 15,
                  //     )
                  //   ],
                  // )
                  );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 5);
            },
          ),
        ));
  }
}
