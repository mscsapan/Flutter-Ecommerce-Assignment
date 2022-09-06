import 'package:flutter/material.dart';

import '../data/others_data.dart';
import 'custom_deals.dart';

class ChipRate extends StatelessWidget {
  const ChipRate({Key? key}) : super(key: key);

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
            chipRateImages.length,
            (index) => CustomDeals(
                name: chipRateTitle[index],
                address: chipRateAddress[index],
                quantity: '143 Item',
                underlie: true,
                image: chipRateImages[index]),
          ),
        ),
      ),
    );
  }
}
