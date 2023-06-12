import 'package:flutter/material.dart';

import 'screen/loginscreen.dart';
import 'splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barterlt',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const SplashScreen(),
    );
  }
}
