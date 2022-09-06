import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/views/new_arrival.dart';

class PopularFoodScreen extends StatelessWidget {
  const PopularFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF54748),
        elevation: 0.0,
        toolbarHeight: 82.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(26.0),
          ),
        ),
        title: Row(
          children: [
            Container(
              height: 40.0,
              width: 40.0,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(
                  0xFFFFFFFF,
                ),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 22.0,
                color: Color(0xFF0B2C3D),
              ),
            ),
            const SizedBox(width: 10.0),
            const Text('Popular Food'),
          ],
        ),
      ),
      body: SizedBox(
          height: size.height * 0.9,
          width: size.width,
          child: const NewArrival()),
    );
  }
}
