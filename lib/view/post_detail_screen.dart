import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/util/app_ui_data.dart';
import 'package:pet/view/widgets/custom_text.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PostDetailScreen extends StatefulWidget {
  const PostDetailScreen({super.key});

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  List<String> imagePath = [
    "images/Womens-Heels.jpg",
    "images/p2.jpg",
    "images/p3.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.redAccent,
              radius: 20,
            ),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomText(
                  text: "Shivam Jain",
                  fontSize: 18,
                  fontweight: FontWeight.w500,
                  color: Colors.white,
                ),
                CustomText(
                  text: "Meerut, UP",
                  fontSize: 12,
                  fontweight: FontWeight.w400,
                  color: Colors.white70,
                ),
              ],
            ),
          ],
        ),
        iconTheme: const IconThemeData(
              color: Colors.white, //change your color here
            ),
      ),
      body: Stack(children: [
        PhotoViewGallery.builder(
          scrollPhysics: const BouncingScrollPhysics(),
          builder: (BuildContext context, int index) {
            return PhotoViewGalleryPageOptions(
              imageProvider: AssetImage(imagePath[index].toString()),
              // initialScale: PhotoViewComputedScale.contained * 0.8,
              // heroAttributes: PhotoViewHeroAttributes(tag: galleryItems[index].id),
            );
          },
          itemCount: imagePath.length,
          loadingBuilder: (context, event) => Center(
            child: Container(
              width: 20.0,
              height: 20.0,
              // child: CircularProgressIndicator(
              //   value: event == null
              //       ? 0
              //       : event.cumulativeBytesLoaded / event.expectedTotalBytes,
              // ),
            ),
          ),
          // backgroundDecoration: widget.backgroundDecoration,
          // pageController: widget.pageController,
          // onPageChanged: onPageChanged,
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            height: height / 3.5,
            width: width / 6.5,
            // color: Colors.greenAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Icon(Icons.star, size: 20, color: Colors.indigo),
                    const SizedBox(height: 2),
                    CustomText(
                      text: '55',
                      fontSize: 9,
                      fontweight: FontWeight.w500,
                      color: Colors.white,
                    )
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.message, size: 20, color: Colors.indigo),
                    const SizedBox(height: 2),
                    CustomText(
                      text: 'Message',
                      fontSize: 9,
                      fontweight: FontWeight.w500,
                      color: Colors.white,
                    )
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.share, size: 20, color: Colors.indigo),
                    const SizedBox(height: 2),
                    CustomText(
                      text: 'Share',
                      fontSize: 9,
                      fontweight: FontWeight.w500,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(height: 20)
              ],
            ),
          ),
        ),
        Positioned(
            left: 0,
            bottom: 0,
            child: Container(
                padding: EdgeInsets.all(8),
                height: 150,
                width: width / 1.2,
                // color: Colors.redAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     CustomText(
                      text: 'Labrador'"( ""Male"" )",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white,
                      // style: DefaultTextStyle.of(context).style,
                    ),
                    const SizedBox(height: 10,),
                    CustomText(
                      text:
                          'We provide complete development services according to latest trends and technology. Skills jyu juy gyy Web Development according to latest trends',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.white,
                      fontweight: FontWeight.w400,
                      // style: DefaultTextStyle.of(context).style,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                            BottomSheet(
                              onClosing: (){},
                              showDragHandle: true,
                              enableDrag: false,
                              shape: const RoundedRectangleBorder(
      	                        borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25.0),
                                ),
                              ),
                              builder: (context) {
                                return Container(
                                  width: double.maxFinite,
                                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomText(
                                          text: 
                                            'We provide complete development services according to latest trends and technology. Skills jyu juy gyy Web Development according to latest trends',
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }
                            )
                          );
                        },
                        
                        child: CustomText(
                          text: "see more...",
                          fontweight: FontWeight.bold,
                          color: Colors.white60,
                        ))
                  ],
                )))
      ]),
    );
  }
}
