import 'package:flutter/material.dart';
import 'package:hacknight_example/movie_catalog/model/models.dart';

class MovieDetailPage extends StatefulWidget {
  final Movie movie;

  MovieDetailPage({@required this.movie});

  @override
  _MovieDetailPageState createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    final movie = widget.movie;

    // TODO add more content here
    return Scaffold(
      // TODO maybe use an AppBar? 🤔
      // appBar: AppBar(title: Text("A title!")),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "${movie.title}",
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }
}
