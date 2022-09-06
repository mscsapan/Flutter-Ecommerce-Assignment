import 'package:flutter/material.dart';

import '../data/arrival_data.dart';
import '../model/new_arrival_model.dart';
import '../style.dart';
import 'discount_offer.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      margin: const EdgeInsets.only(bottom: 20.0),
      child: GridView.builder(
        itemCount: arrival.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 0.0,
            childAspectRatio: 0.72),
        itemBuilder: (context, position) {
          final Arrival result = arrival[position];
          return Container(
            width: size.width / 2.0,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(
                color: const Color(0xFFD9D9D9),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 150.0,
                  margin: const EdgeInsets.only(bottom: 5.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0)),
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(result.image, fit: BoxFit.fill),
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
                              color: result.isFavorite == true
                                  ? Colors.red
                                  : Colors.grey),
                        ),
                      ),
                      const Positioned(
                          top: 8.0,
                          right: 8.0,
                          child: DiscountOffer(message: '-54%')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            result.category,
                            style: subTitleStyle().copyWith(fontSize: 14.0),
                          ),
                          Row(
                            children: const [
                              Icon(Icons.star,
                                  size: 18.0, color: Color(0xFFF54748)),
                              Text(
                                '3.6',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        result.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0,
                          color: Color(0xFF2E2E2E),
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Row(
                        children: [
                          Text(
                            '\$${result.price.toString()}',
                            style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFF54748)),
                          ),
                          const SizedBox(width: 10.0),
                          Text(
                            '\$${result.discount.toString()}',
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                                color: Color(0xFF0B2C3D),
                                decorationThickness: 3.0,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Spacer(),
                    Container(
                      height: 35.0,
                      width: 35.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF54748),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          bottomRight: Radius.circular(4.0),
                        ),
                      ),
                      child: const Icon(Icons.add,
                          size: 32.0, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
