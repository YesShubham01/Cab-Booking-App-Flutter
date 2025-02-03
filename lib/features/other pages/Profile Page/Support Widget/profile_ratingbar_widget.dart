import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

class ProfileRatingBar extends StatefulWidget {
  const ProfileRatingBar({super.key});

  @override
  State<ProfileRatingBar> createState() => _ProfileRatingBarState();
}

class _ProfileRatingBarState extends State<ProfileRatingBar> {
  final double _initialRating = 4;
  late double _rating = 4;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RatingBar.builder(
          initialRating: _initialRating,
          minRating: 1,
          allowHalfRating: true,
          unratedColor: Colors.amber.withAlpha(50),
          itemCount: 5,
          itemSize: h * 0.03,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            setState(() {
              _rating = rating;
            });
          },
          ignoreGestures: true,
        ),
        const Gap(5),
        Text(
          "$_initialRating",
          style: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
