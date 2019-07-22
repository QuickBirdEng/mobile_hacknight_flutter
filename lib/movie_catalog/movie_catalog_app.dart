import 'package:flutter/material.dart';
import 'package:hacknight_example/movie_catalog/detail/movie_detail_page.dart';
import 'package:hacknight_example/movie_catalog/model/mocked_data.dart';
import 'package:hacknight_example/movie_catalog/movie_item.dart';

import 'model/models.dart';

class MovieCatalogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
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
      body: ListView.builder(
        itemCount: mockedMovies.length,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 48),
        itemBuilder: (context, index) {
          final movie = mockedMovies[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: MovieItem(
              movie: movie,
              onTap: () => _routeToDetailPage(movie),
            ),
          );
        },
      ),
    );
  }

  // -----
  // Routing
  // -----

  void _routeToDetailPage(Movie movie) {
    Navigator.of(context).push<void>(MaterialPageRoute(builder: (context) => MovieDetailPage(movie: movie)));
  }
}
