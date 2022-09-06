import 'package:flutter/material.dart';

class DiscountOffer extends StatelessWidget {
  final String message;

  const DiscountOffer({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.0,
      width: 45.0,
      alignment: Alignment.center,
      color: const Color(0xFFF54748),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text(
          message,
          style: const TextStyle(
              fontSize: 12.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
