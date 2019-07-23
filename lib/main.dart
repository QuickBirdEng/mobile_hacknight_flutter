import 'package:flutter/material.dart';
import 'package:hacknight_example/movie_catalog/detail/movie_detail_page.dart';
import 'package:hacknight_example/movie_catalog/model/models.dart';
import 'package:hacknight_example/movie_catalog/movie_catalog_app.dart';
import 'package:hacknight_example/movie_catalog/movie_item.dart';

/// Task1:
/// - Open [MovieCatalogApp] in movie_catalog_app.dart.
/// - Create a [ListView] and display a list of [MovieItem]s.
/// - Adjust the style of the list items in the [MovieItem] class.
///
///
///
/// Hints:
///
/// [Image.network] can be used to display the image of the movie.
/// Example: Image.network(Uri.decodeFull(movie.imageUrl))
///
///
/// Is your text overflowing? Try [Flexible].
/// Example:
/// Flexible(
///   child: Text(
///     movie.title,
///     overflow: TextOverflow.ellipsis,
///   ),
/// )
///

/// Task2:
/// - Open [MovieItem] in movie_item.dart
/// - Use [Navigator.push] to route to the [MovieDetailPage].
///
///
///
/// Hints:
///
/// Use [InkWell] or [GestureDetector] to listen for click events.
///
/// Create a [MaterialPageRoute] that returns the
/// instance of [MovieDetailPage] in its builder function.
///
/// Example:
/// MaterialPageRoute(builder: (context) => MovieDetailPage(movie: clickedMovie));

/// Task3:
/// - Open [MovieDetailPage] in movie_detail_page.dart.
/// - Display the information of a [Movie] in the existing [MovieDetailPage] class.
///
///
///
/// Hints:
///
/// You create a simple page skeleton by using a [Scaffold].
/// Try setting [Scaffold.body] or [Scaffold.appBar] (use [AppBar] for that).
///

/// Task4:
/// - Adjust Design accordingly to the design found in (https://dribbble.com/shots/5352058-Movie-Application/attachments)
///
///
/// Hints:
///
/// Use [Stack] to put widgets on top of each other. This can be used to put a
/// [Card] on top of the image as shown in the design.
///
/// [SingleChildScrollView] can be used to make a bigger widget scrollable.
///
/// Create a [Container] and adjust [Container.foregroundDecoration]
/// to create different gradients on an image.
/// Example:
/// foregroundDecoration: BoxDecoration(
///   gradient: LinearGradient(colors: [
///     Colors.black26,
///     Colors.black45,
///     Colors.black,
///   ]),
/// )
void main() => runApp(MovieCatalogApp());
