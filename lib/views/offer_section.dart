import 'package:flutter/material.dart';

class OfferSection extends StatelessWidget {
  const OfferSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
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
          SizedBox(
            // color: Colors.black26,
            width: size.width * 0.4,
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
                          color: index == 2 ? Colors.green : Colors.white70,
                        ),
                        margin: const EdgeInsets.only(right: 4.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.45,
            height: size.height * 0.2,
            // color: Colors.black26,
            child: Stack(
              children: [
                Positioned(
                  bottom: 16.0,
                  child: Container(
                    height: 90.0,
                    width: 90.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/ss2.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 12.0,
                  top: 8.0,
                  child: Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/ss1.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 12.0,
                  right: 16.0,
                  child: Container(
                    height: 70.0,
                    width: 70.0,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          '33%',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                        Text('Discount'),
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
