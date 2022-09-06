import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/views/category_menu.dart';
import 'package:flutter_assignment/views/hot_deals.dart';
import 'package:flutter_assignment/views/offer_section.dart';
import 'package:flutter_assignment/views/popular_restaurant.dart';
import 'package:flutter_assignment/views/today_hot.dart';

import '../views/chip_rate.dart';
import '../views/heading_view.dart';
import '../views/new_arrival.dart';
import '../views/popular_food.dart';
import '../views/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: const [
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
          // SizedBox(height: 16.0),
          TodayHot(),
          SizedBox(height: 16.0),
          HeadingView(leftTitle: 'Chip Rate'),
          // SizedBox(height: 16.0),
          ChipRate(),
          HeadingView(leftTitle: 'New Arrival', isShow: true),
          SizedBox(height: 16.0),
          NewArrival(),
        ],
      ),
    );
  }
}
