import 'dart:math';

import 'package:flutter/material.dart';

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: BirdFlyGame(),
          ),
        ),
      ),
    );
  }
}

class BirdFlyGame extends StatefulWidget {
  @override
  _BirdFlyGameState createState() => _BirdFlyGameState();
}

class _BirdFlyGameState extends State<BirdFlyGame> {
  var currentAlignment = Alignment(0, 0);

  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
      alignment: currentAlignment,
      child: GestureDetector(
        child: QuickbirdLogo(),
        onTap: () => randomizeAlignment(),
      ),
    );
  }

  void randomizeAlignment() {
    setState(() {
      currentAlignment = Alignment(nextDouble(), nextDouble());
    });
  }

  double nextDouble() {
    final random = Random();
    final isNegative = random.nextBool();

    final double = random.nextDouble();
    if (isNegative) return -1 * double;
    return double;
  }
}

class QuickbirdLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset("images/quickbird_logo.png", width: 112);
  }
}

class HackNightTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        "QuickBird HackNight",
        style: TextStyle(fontSize: 48),
        textAlign: TextAlign.center,
      ),
    );
  }
}
