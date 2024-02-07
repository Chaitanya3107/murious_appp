import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingFeedback extends StatefulWidget {
  const RatingFeedback({Key? key}) : super(key: key);

  @override
  State<RatingFeedback> createState() => _RatingFeedbackState();
}

class _RatingFeedbackState extends State<RatingFeedback> {
  late double ratingApp;

  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RatingBar.builder(
        unratedColor: Colors.white,
        initialRating: 0,
        itemCount: 5,
        itemSize: 60, // Set the size of the icons
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return const SizedBox(
                child: Icon(
                  Icons.sentiment_very_dissatisfied,
                  color: Colors.red,
                ),
              );
            case 1:
              return const SizedBox(
                child: Icon(
                  Icons.sentiment_dissatisfied,
                  color: Colors.redAccent,
                ),
              );
            case 2:
              return const SizedBox(
                child: Icon(
                  Icons.sentiment_neutral,
                  color: Colors.amber,
                ),
              );
            case 3:
              return const SizedBox(
                child: Icon(
                  Icons.sentiment_satisfied,
                  color: Colors.lightGreen,
                ),
              );
            case 4:
              return const SizedBox(
                child: Icon(
                  Icons.sentiment_very_satisfied,
                  color: Colors.green,
                ),
              );
            default:
              throw Exception('Invalid rating index');
          }
        },
        onRatingUpdate: (rating) {
          setState(() {
            ratingApp = rating;
          });
          print(rating);
        },
      ),
    );
  }
}
