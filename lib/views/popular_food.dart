import 'package:flutter/material.dart';
import 'package:flutter_assignment/views/discount_offer.dart';

import '../constraints/app_color.dart';
import '../data/popular_food_data.dart';
import '../style/style.dart';

class CampaignFood extends StatelessWidget {
  const CampaignFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.0,
      width: double.infinity,
      child: ListView.builder(
        itemCount: titile.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        itemBuilder: (context, index) {
          return Container(
            height: 210.0,
            width: 180.0,
            margin: const EdgeInsets.symmetric(horizontal: 6.0),
            decoration: BoxDecoration(
                color: const Color(0xFFF1F5F7),
                border: Border.all(color: const Color(0xFFD9D9D9)),
                borderRadius: BorderRadius.circular(4.0)),
            child: Column(
              children: [
                SizedBox(
                  height: 140.0,
                  width: 180.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0)),
                    child: Stack(
                      children: [
                        Image.asset(image[index],
                            fit: BoxFit.cover, height: 140.0, width: 180.0),
                        Positioned(
                          top: 8.0,
                          left: 8.0,
                          child: Container(
                            height: 28.0,
                            width: 28.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: const Color(0xFFFFFFFF)),
                            child: const Icon(Icons.favorite_outlined,
                                size: 20.0, color: Colors.red),
                          ),
                        ),
                        const Positioned(
                            top: 8.0,
                            right: 8.0,
                            child: DiscountOffer(message: '54%')),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(cat[index], style: subTitleStyle()),
                          Row(
                            children: const [
                              Icon(Icons.star, size: 18.0, color: mActiveColor),
                              Text('3.5')
                            ],
                          ),
                        ],
                      ),
                      Text(titile[index],
                          overflow: TextOverflow.ellipsis,
                          style: menuTitleStyle()),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text('\$${19.50}', style: menuTitleStyle()),
                              const SizedBox(width: 10.0),
                              Text(
                                '\$${50.0}',
                                style: discountStyle(),
                              )
                            ],
                          ),
                          //const SizedBox(width: 10.0),
                          // Icon(Icons.add, size: 32.0),
                          Container(
                            height: 35.0,
                            width: 35.0,
                            margin:
                                const EdgeInsets.only(top: 12.0, left: 40.0),
                            decoration: const BoxDecoration(
                              color: Color(0xFFF54748),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                bottomRight: Radius.circular(4.0),
                              ),
                            ),
                            child: const Icon(Icons.add,
                                size: 32.0, color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
