import 'package:flutter/material.dart';
import 'package:flutter_assignment/views/user_input.dart';

import 'notification.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                  width: size.width,
                  child: Stack(
                    clipBehavior: Clip.none,
                    // fit: StackFit.expand,
                    children: [
                      Positioned(
                        top: -50.0,
                        left: -14.0,
                        child: Image.asset(
                          'assets/top_border.png',
                          height: 240.0,
                          width: 240.0,
                        ),
                      ),
                      Positioned(
                          top: 50.0,
                          left: 20.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.location_searching,
                                size: 20.0,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                'Select Location',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 4.5),
                              Icon(Icons.keyboard_arrow_down_sharp,
                                  size: 20.0, color: Colors.white)
                            ],
                          )),
                      Positioned(
                          right: size.width * 0.18,
                          bottom: 30.0,
                          child: const NotificationIcon(
                              icon: Icons.notifications)),
                      Positioned(
                          right: size.width * 0.08,
                          bottom: 30.0,
                          child: const NotificationIcon(
                              icon: Icons.shopping_cart_outlined)),
                      // const NotificationIcon(icon: Icons.),
                    ],
                  ),
                ),
              ],
            ),
            const SearchTextField(),
          ],
        ),
      ],
    );
  }
}
