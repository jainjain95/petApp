import 'package:flutter/material.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/widgets/custom_text.dart';
import 'package:pet/view/widgets/shimmer/shimmer_post_tile.dart';

class PersonProfileScreen extends StatelessWidget {
  const PersonProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Row(
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          child: CircleAvatar(
                              radius: 20, backgroundColor: app_color),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: app_color,
                          ),
                        ),
                        CircleAvatar(
                          radius: 64,
                          backgroundColor: app_color,
                          child: CircleAvatar(
                            radius: 61,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 58,
                              backgroundColor: app_color,
                              backgroundImage: AssetImage("images/arpit.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Shivam Jain",
                          fontweight: FontWeight.bold,
                          fontSize: 25,
                        ),
                        CustomText(
                          text: "meerut, up",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          fontSize: 14,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CustomText(
                  text:
                      "A Flutter plugin to share content from your Flutter app via the platform's share dialog. Wraps the ACTION_SEND Intent on Android and UIActivityViewController on iOS.",
                ),
                const SizedBox(height: 20),
                ListView.separated(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (Buildcontext, index) {
                    // return PostTile(imgCount: imgCount[index], who: false,);
                    return const ShimmerPostTile();
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 10);
                  },
                ),
              ],
            ),
          ),
        )
      );
  }
}
