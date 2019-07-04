import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

@immutable
class Movie {
  final String title;
  final String description;
  final DateTime releaseDate;
  final String imageUrl;
  final String trailerUrl;
  final List<Actor> actors;
  final List<Review> reviews;

  Movie({
    @required this.title,
    @required this.description,
    @required this.releaseDate,
    @required this.imageUrl,
    @required this.trailerUrl,
    @required this.actors,
    @required this.reviews,
  });
}

@immutable
class Actor {
  final String name;
  final String imageUrl;

  Actor({@required this.name, @required this.imageUrl});
}

@immutable
class Review {
  static final maxScore = 5.0;

  final double score;
  final String description;

  final User author;

  Review({
    @required this.score,
    @required this.description,
    @required this.author,
  }) : assert(score <= maxScore);
}

@immutable
class User {
  final String name;
  final String profilePictureUrl;

  User({@required this.name, @required this.profilePictureUrl});
}
