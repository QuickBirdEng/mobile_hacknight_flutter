import 'package:flutter/material.dart';
import 'package:hacknight_example/movie_catalog/model/models.dart';

class ReviewSection extends StatelessWidget {
  final List<Review> reviews;

  ReviewSection({@required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Review"),
    );
  }
}
