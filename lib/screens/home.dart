import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/data/arrival_data.dart';
import 'package:flutter_assignment/data/others_data.dart';
import 'package:flutter_assignment/model/new_arrival_model.dart';
import 'package:flutter_assignment/views/category_menu.dart';
import 'package:flutter_assignment/views/hot_deals.dart';
import 'package:flutter_assignment/views/offer_section.dart';
import 'package:flutter_assignment/views/popular_restaurant.dart';

import '../style.dart';
import '../views/discount_offer.dart';
import '../views/heading_view.dart';
import '../views/new_arrival.dart';
import '../views/popular_food.dart';
import '../views/custom_deals.dart';
import '../views/top_section.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final Color red = Colors.red;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [
          TopSection(),
          OfferSection(),
          HeadingView(leftTitle: 'Category'),
          SizedBox(height: 15.0),
          CatMenu(),
          SizedBox(height: 26.0),
          HeadingView(leftTitle: 'Popular Food'),
          SizedBox(height: 16.0),
          CampaignFood(),
          HotDeals(),
          SizedBox(height: 26.0),
          HeadingView(leftTitle: 'Popular Restaurant'),
          SizedBox(height: 16.0),
          PopularRestaurantList(),
          SizedBox(height: 26.0),
          HeadingView(leftTitle: 'Todays Hots'),
          SizedBox(height: 16.0),
          SizedBox(
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
          ),
          SizedBox(height: 16.0),
          HeadingView(leftTitle: 'Chip Rate'),
          SizedBox(height: 16.0),
          SizedBox(
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
          ),
          const HeadingView(leftTitle: 'New Arrival'),
          const NewArrival(),
        ],
      ),
    );
  }
}
