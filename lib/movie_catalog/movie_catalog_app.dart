import 'package:flutter/material.dart';
import 'package:hacknight_example/movie_catalog/model/mocked_data.dart';
import 'package:hacknight_example/movie_catalog/movie_item.dart';

/// Task1:
/// Create a [ListView] and display a list of [MovieItem]s.
/// Mocked data is stored in [mockedMovies].
///
/// Task2: Adjust the style of the items to display more than just the name
/// (Optional: Display the image of the movie)
/// (Optional: Implement search feature by using [TextField] and [TextEditingController])
/// (Optional: Display the rating using 5 colored stars)
///
/// Task3: Use the [Navigator] to route to the [MovieDetailPage]
/// (Optional: Adjust Design accordingly to the design found in https://dribbble.com/shots/5352058-Movie-Application/attachments)
///
/// Task4: Display a list of reviews by implement [ReviewContainer].
/// (Optional: Make list horizontally scrollable.)

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
      body: ListView.builder(
        itemCount: mockedMovies.length,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 48),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: MovieItem(movie: mockedMovies[index]),
          );
        },
      ),
    );
  }
}
