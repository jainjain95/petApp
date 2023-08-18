import 'package:flutter/material.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPostTile extends StatelessWidget {
  const ShimmerPostTile({super.key});

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
                radius: 20,
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
                    height: 18,
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
                    height: 10,
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
            height: 180,
            width: double.infinity,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 10),
        Shimmer.fromColors(
          // baseColor: Colors.grey.withOpacity(0.10),
          baseColor: app_color,
          highlightColor: Colors.white.withOpacity(0.06),
          child: Container(
            height: 10,
            width: 100,
            clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
          ),
        ),
        SizedBox(height: 4),
        Shimmer.fromColors(
          // baseColor: Colors.grey.withOpacity(0.10),
          baseColor: app_color,
          highlightColor: Colors.white.withOpacity(0.06),
          child: Container(
            height: 10,
            width: 70,
            clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
          ),
        ),
        SizedBox(height: 10),
          Shimmer.fromColors(
            //  baseColor: Colors.grey.withOpacity(0.10),
            baseColor: app_color,
          highlightColor: Colors.white.withOpacity(0.06),
            child: Container(
              height: 20,
              width: 30,
              clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
            ),
          ),
        SizedBox(height: 10),
        Divider(color: Colors.grey.withOpacity(0.10),height: 20,)
      ],
    );
  }
}