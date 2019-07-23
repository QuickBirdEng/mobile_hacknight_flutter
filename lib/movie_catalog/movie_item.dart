import 'package:flutter/material.dart';

import 'model/models.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;

  MovieItem({@required this.movie});

  @override
  Widget build(BuildContext context) {
    //TODO add more content here
    return Container(
      child: Text(movie.title),
      color: Colors.black12,
    );
  }
}
