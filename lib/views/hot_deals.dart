import 'package:flutter/material.dart';

class HotDeals extends StatelessWidget {
  const HotDeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      height: size.height * 0.26,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: List.generate(
                  4,
                  (index) => Container(
                    height: size.height * 0.21,
                    width: size.width * 0.9,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      gradient: index % 2 == 0
                          ? const LinearGradient(
                              colors: [
                                Color(0xFFF6290C),
                                Color(0xFFC70F16),
                              ],
                            )
                          : const LinearGradient(
                              colors: [
                                Color(0xFFE47F0D),
                                Color(0xFFFFC00B),
                              ],
                            ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Hot Deals',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(height: 12.0),
                              const Text(
                                'Up to - 30% Off',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 14.0),
                              OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      side:
                                          const BorderSide(color: Colors.grey)),
                                  onPressed: () {},
                                  child: const Text(
                                    'Shop Now',
                                    style: TextStyle(color: Color(0xFFFFFFFF)),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          height: 116.0,
                          width: 116,
                          margin: const EdgeInsets.only(right: 20.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/ss2.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Container(
                height: 4.0,
                width: index == 1 ? 20.0 : 25.0,
                margin: const EdgeInsets.only(right: 5.0),
                decoration: BoxDecoration(
                    color: index == 1
                        ? const Color(0xFFFF5200)
                        : const Color(0xFFB0D8FF),
                    borderRadius: BorderRadius.circular(4.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
