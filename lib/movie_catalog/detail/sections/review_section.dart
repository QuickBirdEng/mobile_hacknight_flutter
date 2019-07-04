import 'package:flutter/material.dart';
import 'package:hacknight_example/movie_catalog/model/models.dart';

class ReviewSection extends StatelessWidget {
  final List<Review> reviews;

  ReviewSection({@required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      color: Colors.green,
    );
  }
}
