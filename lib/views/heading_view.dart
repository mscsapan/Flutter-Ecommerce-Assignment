import 'package:flutter/material.dart';

class HeadingView extends StatelessWidget {
  final String leftTitle;
  final String? rightView;

  const HeadingView(
      {Key? key, required this.leftTitle, this.rightView = 'See All'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftTitle,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Color(0xFF2E2E2E))),
          Text(
            rightView!,
            style: const TextStyle(
              color: Color(0xFFF54748),
            ),
          ),
        ],
      ),
    );
  }
}
