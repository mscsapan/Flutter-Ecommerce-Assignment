import 'package:flutter/material.dart';
import '../constraints/app_color.dart';
import '../style/style.dart';
import 'discount_offer.dart';

class PopularFoodItem extends StatelessWidget {
  const PopularFoodItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 125.0,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Card(
              elevation: 4.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: double.infinity,
                    width: 170.0,
                    padding: const EdgeInsets.all(6.0),
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12.0)),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset('assets/ss2.png', fit: BoxFit.fill),
                          index == 0
                              ? const Positioned(
                                  left: 0,
                                  top: 12.0,
                                  child: DiscountOffer(message: '30% Off'))
                              : Container()
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('title', style: menuTitleStyle()),
                        Text('subtitle', style: subTitleStyle()),
                        Row(
                          children: List.generate(
                              4,
                              (index) => const Icon(Icons.star,
                                  size: 18, color: mActiveColor)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('\$${200.0}', style: menuTitleStyle()),
                                const SizedBox(width: 10.0),
                                Text('\$${10.0}', style: discountStyle())
                              ],
                            ),
                            //const SizedBox(width: 10.0),
                            const Padding(
                              padding: EdgeInsets.only(left: 60.0, top: 10.0),
                              child: Icon(Icons.add, size: 32.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
