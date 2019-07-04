import 'package:flutter/material.dart';
import 'package:hacknight_example/movie_catalog/model/models.dart';

class ActorSection extends StatelessWidget {
  final List<Actor> actors;

  ActorSection({@required this.actors});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Actors"),
    );
  }
}
