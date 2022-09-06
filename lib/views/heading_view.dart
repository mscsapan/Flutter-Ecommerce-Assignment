import 'package:flutter/material.dart';

class HeadingView extends StatelessWidget {
  final String leftTitle;
  final String? rightView;
  final bool isShow;

  const HeadingView(
      {Key? key,
      required this.leftTitle,
      this.rightView = 'See All',
      this.isShow = false})
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
                  fontSize: 22.0,
                  color: Color(0xFF2E2E2E))),
          isShow == false
              ? Text(
                  rightView!,
                  style: const TextStyle(
                    color: Color(0xFFF54748),
                  ),
                )
              : const MenuIcon(),
        ],
      ),
    );
  }
}

class MenuIcon extends StatelessWidget {
  const MenuIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.0,
      width: 34.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
            3, (i) => Image.asset('assets/icon/icon${i + 1}.png')),
      ),
    );
  }
}
