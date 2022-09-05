import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../views/top_section.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final Color white = Colors.white;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          const TopSection(),
          Container(
            height: _size.height * 0.2,
            width: _size.width,
            margin:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFF54748),
                  Color(0xFF980D0E),
                ],
              ),
            ),
            child: Row(
              children: [
                Container(
                  // color: Colors.black26,
                  width: _size.width * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Food Delivery',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 4.0),
                        const Text('Get yur Food fast..',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500)),
                        const SizedBox(height: 6.0),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero),
                                primary: const Color(0xFFFFFFFF)),
                            onPressed: () {},
                            child: const Text(
                              'Shop now',
                              style: TextStyle(color: Color(0xFFF54748)),
                            )),
                        const SizedBox(height: 12.0),
                        Row(
                          children: List.generate(
                            4,
                            (index) => Container(
                              height: 5.0,
                              width: index == 2 ? 22 : 24.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color:
                                    index == 2 ? Colors.green : Colors.white70,
                              ),
                              margin: const EdgeInsets.only(right: 4.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
