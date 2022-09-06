import 'package:flutter/material.dart';
import '../data/restaurant_data.dart';
import '../style/style.dart';
import 'discount_offer.dart';

class PopularRestaurantList extends StatelessWidget {
  final String message;

  const PopularRestaurantList({Key? key, this.message = '30% Off'})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.0,
      width: double.infinity,
      child: ListView.builder(
        itemCount: title.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        itemBuilder: (context, index) {
          return Container(
            height: 180.0,
            width: 180.0,
            margin: const EdgeInsets.symmetric(horizontal: 6.0),
            decoration: BoxDecoration(
                color: const Color(0xFFF1F5F7),
                border: Border.all(color: const Color(0xFFD9D9D9)),
                borderRadius: BorderRadius.circular(4.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        Image.asset(images[index],
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
                            child: Icon(Icons.favorite_outlined,
                                size: 20.0,
                                color:
                                    index % 2 == 1 ? Colors.grey : Colors.red),
                          ),
                        ),
                        const Positioned(
                            top: 8.0,
                            right: 8.0,
                            child: DiscountOffer(message: '-54%')),
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
                          Text('Comilla', style: subTitleStyle()),
                          Row(
                            children: const [
                              Icon(Icons.star,
                                  size: 18.0, color: Color(0xFFF54748)),
                              Text(
                                '3.5',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                      Text(
                        title[index],
                        overflow: TextOverflow.ellipsis,
                        style: menuTitleStyle(),
                      ),
                    ],
                  ),
                ),
                const Text(
                  '134 Items',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Color(0xFFF54748),
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
