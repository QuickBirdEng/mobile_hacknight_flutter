import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hacknight_example/movie_catalog/model/models.dart';

class ReviewSection extends StatelessWidget {
  final List<Review> reviews;

  ReviewSection({@required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      alignment: Alignment.center,
      child: Column(children: reviews.map(_createItem).toList()),
    );
  }

  Widget _createItem(Review review) => ReviewItem(review: review);
}

class ReviewItem extends StatelessWidget {
  final Review review;

  ReviewItem({@required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              RoundedImage(size: 56, url: review.author.profilePictureUrl),
              SizedBox(height: 4),
              Text(review.author.name,
                  style: Theme.of(context).textTheme.caption),
            ],
          ),
          SizedBox(width: 12),
          Flexible(
            child: Text(
              review.description,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.body1,
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedImage extends StatelessWidget {
  final double size;
  final String url;

  RoundedImage({@required this.size, @required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(url))),
    );
  }
}
