import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'bubbles_background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: const [
            BubblesBackground(
              maxTheta: 2.0 * pi,
              maxRadius: 6,
              maxSpeed: 0.4,
              maxBubbles: 90,
              bubblesColor: Color.fromARGB(234, 18, 203, 231),
              tweenBegin: 100.0,
              tweenEnd: 250.0,
              animationDurationInSeconds: 6,
            ),
          ],
        ),
        backgroundColor: Colors.black45,
      ),
    );
  }
}
