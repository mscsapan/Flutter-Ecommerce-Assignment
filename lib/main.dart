import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart';

/*void main() {
  runApp(DevicePreview(
      tools: const [...DevicePreview.defaultTools],
      builder: (BuildContext context) => const FlutterApp()));
}*/
void main() => runApp(const FlutterApp());

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(), debugShowCheckedModeBanner: false);
  }
}
