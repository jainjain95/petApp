import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/view/post_detail_screen.dart';
import 'package:pet/view/widgets/custom_text.dart';
import 'package:pet/view/widgets/saved_post_tile.dart';
import 'package:pet/view/widgets/shimmer/shimmer_saved_post_tile.dart';

import '../util/app_ui_data.dart';

class SavedPostsScreen extends StatelessWidget {
  const SavedPostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Create Post"),
        backgroundColor: app_color,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: horizontal_padding, vertical: 5),
        child: GridView.count(
            // physics: ScrollPhysics(),
            // shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 14.0,
            children: List.generate(11, (index) {
              // return SavedPostTile();
              return ShimmerSavedPostTile();
            })),
      ),
    );
  }
}
