import 'package:flutter/material.dart';
import 'package:hacknight_example/movie_catalog/detail/play_button.dart';
import 'package:hacknight_example/movie_catalog/model/models.dart';

import 'movie_detail_body.dart';

const _topPadding = 164.0;
const detailPageSpacing = 28.0;

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
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Align(
                  alignment: Alignment(0, -2), child: _buildBackgroundImage()),
              _buildContent(),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // -----
  // Widget Builders
  // -----

  Widget _buildBackgroundImage() {
    return Container(
      width: double.infinity,
      child: Image.network(
        Uri.decodeFull(widget.movie.imageUrl),
        fit: BoxFit.fitWidth,
      ),
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.black26,
          Colors.black45,
          Colors.black,
        ]),
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.only(left: detailPageSpacing, top: _topPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          PlayButton(onPressed: () {}),
          MovieDetailBody(movie: widget.movie),
        ],
      ),
    );
  }
}
