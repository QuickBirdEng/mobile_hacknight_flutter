import 'package:flutter/material.dart';

import 'model/models.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;

  MovieItem({@required this.movie});

  @override
  Widget build(BuildContext context) {
    final radius = Radius.circular(16);
    final borderRadius = BorderRadius.all(radius);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      elevation: 12,
      child: Container(
        height: 132,
        child: Row(
          children: [
            ClipRRect(
              child: Image.network(
                Uri.decodeFull(movie.imageUrl),
                width: 112,
                fit: BoxFit.fitWidth,
              ),
              borderRadius: BorderRadius.only(
                topLeft: radius,
                bottomLeft: radius,
              ),
            ),
            SizedBox(width: 16),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Text(
                      movie.title,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star,color: const Color(0xff8594d0)),
                      SizedBox(width: 8),
                      Text(
                        averageRatingOf(movie),
                        style: TextStyle(
                          color: const Color(0xff8594d0),
                          fontSize: 36,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            priceOf(movie),
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // -----
  // Helper
  // -----

  String averageRatingOf(Movie movie) {
    final sum =
        movie.reviews.map((review) => review.score).reduce((a, b) => a + b);
    final average = (sum / movie.reviews.length).roundToDouble();
    final roundedString = average.toStringAsFixed(2);
    return roundedString.substring(0, roundedString.length - 1);
  }

  String priceOf(Movie movie) => "${movie.ticketPrice} €";
}
