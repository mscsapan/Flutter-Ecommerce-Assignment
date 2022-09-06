import 'package:flutter/material.dart';

import '../data/others_data.dart';
import '../style/style.dart';

class CustomDeals extends StatelessWidget {
  const CustomDeals(
      {Key? key,
      required this.name,
      required this.address,
      required this.quantity,
      required this.image,
      this.underlie = false})
      : super(key: key);
  final String name;
  final String image;
  final String address;
  final String quantity;
  final bool underlie;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 130.0,
      width: size.width * 0.7,
      margin: const EdgeInsets.symmetric(horizontal: 6.0),
      decoration: BoxDecoration(
          color: const Color(0xFFF1F5F7),
          border: Border.all(
            color: const Color(0xFFD9D9D9),
          ),
          borderRadius: BorderRadius.circular(4.0)),
      child: Row(
        children: [
          SizedBox(
            height: 130.0,
            width: size.width * 0.3,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  bottomLeft: Radius.circular(4.0)),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 8.0,
                    left: 8.0,
                    child: Container(
                      height: 28.0,
                      width: 28.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: const Color(0xFFFFFFFF)),
                      child: const Icon(Icons.favorite_outlined,
                          size: 20.0, color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.star, size: 18.0, color: Color(0xFFF54748)),
                  Text(
                    '3.5',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 4.0),
              Text(address, style: subTitleStyle()),
              const SizedBox(height: 3.0),
              Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: menuTitleStyle(),
              ),
              Text(
                quantity,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: underlie ? TextDecoration.underline : null,
                    decorationThickness: 2.5,
                    color: const Color(0xFFF54748),
                    fontSize: 18.0),
              ),
              const Spacer(),
              SizedBox(
                width: size.width * 0.37,
                child: Row(
                  children: [
                    const Spacer(),
                    Container(
                      height: 35.0,
                      width: 35.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF54748),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          bottomRight: Radius.circular(4.0),
                        ),
                      ),
                      child: const Icon(Icons.add,
                          size: 32.0, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
