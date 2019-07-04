import 'package:flutter/material.dart';
import 'package:hacknight_example/movie_catalog/detail/play_button.dart';
import 'package:hacknight_example/movie_catalog/model/models.dart';

import 'movie_detail_body.dart';

const _topPadding = 184.0;
const detailPageSpacing = 40.0;

class MovieDetailPage extends StatefulWidget {
  final Movie movie;

  MovieDetailPage({@required this.movie});

  @override
  _MovieDetailPageState createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(left: detailPageSpacing, top: _topPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            PlayButton(onPressed: () {}),
            MovieDetailBody(movie: widget.movie),
          ],
        ),
      ),
    );
  }
}
