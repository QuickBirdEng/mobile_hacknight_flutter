import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  final VoidCallback onPressed;

  PlayButton({@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff2b6cfe),
      elevation: 0,
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
      child: InkWell(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
            child: Icon(Icons.play_arrow, color: Colors.white, size: 30),
          )),
    );
  }
}