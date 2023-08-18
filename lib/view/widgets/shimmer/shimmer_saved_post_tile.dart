import 'package:flutter/material.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerSavedPostTile extends StatelessWidget {
  const ShimmerSavedPostTile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Shimmer.fromColors(
              // baseColor: Colors.grey.withOpacity(0.10),
              baseColor: app_color,
              highlightColor: Colors.white.withOpacity(0.06),
              child: CircleAvatar(
                radius: 15,
              ),
            ),
            SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  // baseColor: Colors.grey.withOpacity(0.10),
                  baseColor: app_color,
                  highlightColor: Colors.white.withOpacity(0.06),
                  child: Container(
                    height: 12,
                    width: 100,
                    clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                        ),
                  ),
                ),
                SizedBox(height: 5),
                Shimmer.fromColors(
                  // baseColor: Colors.grey.withOpacity(0.10),
                  baseColor: app_color,
                  highlightColor: Colors.white.withOpacity(0.06),
                  child: Container(
                    height: 8,
                    width: 70,
                    clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Shimmer.fromColors(
          // baseColor: Colors.grey.withOpacity(0.10),
          baseColor: app_color,
          highlightColor: Colors.white.withOpacity(0.06),
          child: Container(
            height: 120,
            // width: double.infinity,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
          ),
        ),   
      ],
    );
  }
}