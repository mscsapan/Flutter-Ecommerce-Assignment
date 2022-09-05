import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: [
        Icon(icon, size: 25.0),
        Positioned(
          top: 1.0,
          right: 1.0,
          child: Container(
            height: 12.0,
            width: 12.0,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1.2),
                shape: BoxShape.circle),
            child: Container(
              height: 10.0,
              width: 10.0,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(2.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: const Text(
                '1',
                style: TextStyle(fontSize: 8.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
