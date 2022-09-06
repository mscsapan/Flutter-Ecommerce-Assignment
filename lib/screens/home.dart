import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/screens/home_screen.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  List<Widget> screen = [const HomeScreen()];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      body: screen[0],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFFF54748),
        unselectedItemColor: const Color(0xFF797979),
        unselectedLabelStyle: const TextStyle(
            color: Color(0xFF7C808A),
            fontSize: 14.0,
            fontWeight: FontWeight.w400),
        selectedLabelStyle: const TextStyle(
            color: Color(0xFFF54748),
            fontSize: 14.0,
            fontWeight: FontWeight.w400),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail_rounded), label: 'Inbox'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded), label: 'Order'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
