import 'package:flutter/material.dart';

import '../data/others_data.dart';
import 'custom_deals.dart';

class TodayHot extends StatelessWidget {
  const TodayHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.2,
      width: size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            hotImages.length,
            (index) => CustomDeals(
                name: 'Neapale Pizza',
                address: 'Comilla',
                quantity: '\$10.40',
                image: hotImages[index]),
          ),
        ),
      ),
    );
  }
}
