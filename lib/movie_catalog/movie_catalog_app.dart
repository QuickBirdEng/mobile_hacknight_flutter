import 'package:flutter/material.dart';

class MovieCatalogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO replace "Center" with a ListView
      body: Center(
        child: Text(
          "Let's get 💩 done!",
          style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
