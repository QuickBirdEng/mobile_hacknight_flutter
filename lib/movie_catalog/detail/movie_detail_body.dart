import 'package:flutter/material.dart';
import 'package:hacknight_example/movie_catalog/detail/sections/actor_section.dart';
import 'package:hacknight_example/movie_catalog/detail/sections/info_section.dart';
import 'package:hacknight_example/movie_catalog/detail/sections/review_section.dart';
import 'package:hacknight_example/movie_catalog/model/models.dart';

import 'movie_detail_page.dart';

class MovieDetailBody extends StatefulWidget {
  final Movie movie;

  MovieDetailBody({@required this.movie});

  @override
  _MovieDetailBodyState createState() => _MovieDetailBodyState();
}

class _MovieDetailBodyState extends State<MovieDetailBody> {
  @override
  Widget build(BuildContext context) {
    final movie = widget.movie;

    return IntrinsicHeight(
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              movie.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: detailPageSpacing),
            Text(
              movie.description,
              style: Theme.of(context)
                  .textTheme
                  .subtitle
                  .copyWith(color: Colors.black54),
              maxLines: 6,
              overflow: TextOverflow.fade,
            ),
            SizedBox(height: detailPageSpacing),
            _buildInfoTabBar(),
          ],
        ),
        padding: EdgeInsets.all(detailPageSpacing),
      ),
    );
  }

  // -----
  // Widget Builders
  // -----

  Widget _buildInfoTabBar() {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TabBar(
            tabs: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text("Reviews", style: TextStyle(color: Colors.black54)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text("Actors", style: TextStyle(color: Colors.black54)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text("Info", style: TextStyle(color: Colors.black54)),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              children: [
                ReviewSection(reviews: widget.movie.reviews),
                ActorSection(actors: widget.movie.actors),
                InfoSection(movie: widget.movie),
              ],
            ),
          )
        ],
      ),
    );
  }
}
