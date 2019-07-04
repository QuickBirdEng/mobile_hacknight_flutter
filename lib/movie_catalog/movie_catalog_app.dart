import 'package:flutter/material.dart';

import 'models.dart';

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
    return Container();
  }
}

class MovieItem extends StatelessWidget {
  final Movie movie;

  MovieItem({@required this.movie});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
      ),
      title: Text(movie.title),
      trailing: IconButton(
          icon: Icon(Icons.star),
          onPressed: () {
            /*Navigate to page*/
          }),
    );
  }
}
