import 'package:flutter/material.dart';
import 'package:pet/view/widgets/custom_text.dart';

class SponseredAds extends StatefulWidget {
  SponseredAds({super.key});

  @override
  State<SponseredAds> createState() => _SponseredAdsState();
}

class _SponseredAdsState extends State<SponseredAds> {
  bool test = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 2, top: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ////////////////////////////////////////     profile Detail
          Container(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  radius: 20,
                  backgroundImage: AssetImage("images/arpit.png"),
                ),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Lenskart: Eyeglasses",
                      fontSize: 16,
                      fontweight: FontWeight.w500,
                    ),
                    CustomText(
                      text: "Sponsered",
                      fontSize: 10,
                      fontweight: FontWeight.w400,
                      color: Colors.black45,
                    ),
                  ],
                ),
              ],
            ),
          ),
          ////////////////////////////////////////////////////////////////   ads list
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              height: 300,
              width: double.maxFinite,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (buidcontext, index) {
                        return Container(
                            height: 220,
                            width: 250,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "images/dog_food.jpg",
                                        ),
                                        fit: BoxFit.cover,
                                      )
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                    height: 60,
                                    decoration: const BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: CustomText(
                                            text:
                                                "kjvc sakj ks kjsaba kjsb akjb jbs bjb ksj xkj xkj kxjb xbx b",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            fontSize: 12,
                                            fontweight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(width: 2),
                                        Container(
                                          width: 80,
                                          decoration: const BoxDecoration(
                                            color: Colors.black87,
                                            borderRadius: BorderRadius.all( Radius.circular(10))
                                          ),
                                          child: Center(
                                            child: CustomText(
                                              text: "Order now",
                                              fontweight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 12,
                                            )
                                          )
                                        ),
                                      ],
                                    ))
                              ],
                            ));
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 10);
                      },
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
