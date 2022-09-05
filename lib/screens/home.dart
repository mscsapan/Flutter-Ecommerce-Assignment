import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/views/category_menu.dart';
import 'package:flutter_assignment/views/hot_deals.dart';
import 'package:flutter_assignment/views/offer_section.dart';

import '../views/heading_view.dart';
import '../views/popular_food.dart';
import '../views/top_section.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final Color red = Colors.red;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
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
        ],
      ),
    );
  }
}
