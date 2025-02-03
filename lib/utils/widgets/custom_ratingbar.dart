import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBar extends StatefulWidget {
  final double? itemSize;
  const CustomRatingBar({super.key, this.itemSize});

  @override
  State<CustomRatingBar> createState() => _CustomRatingBarState();
}

class _CustomRatingBarState extends State<CustomRatingBar> {
  late double w; // width
  late double h; // height

  final double _initialRating = 4;
  late double _rating = 4;

  @override
  Widget build(BuildContext context) {
    var dimensions = MediaQuery.sizeOf(context);
    w = dimensions.width;
    h = dimensions.height;
    return RatingBar.builder(
      initialRating: _initialRating,
      minRating: 1,
      allowHalfRating: true,
      unratedColor: Colors.black.withAlpha(50),
      itemCount: 5,
      itemSize: widget.itemSize ?? h * 0.03,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        setState(() {
          _rating = rating;
        });
      },
    );
  }
}
