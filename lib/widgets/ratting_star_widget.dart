import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:people_talk/Constants/app_constants.dart';
class RatingStarWidget extends StatelessWidget {
  RatingStarWidget({required this.selectedIcon, required this.initialRationg,required this.onRattingUpdate});
  double initialRationg;
  IconData? selectedIcon;
  var onRattingUpdate;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: initialRationg,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: false,
      unratedColor: const Color.fromARGB(255, 207, 217, 222),
      itemCount: 5,
      itemSize: 25.0,
      itemPadding: const EdgeInsets.symmetric(horizontal: 12.0),
      itemBuilder: (context, _) => Icon(
        selectedIcon ?? Icons.star,
        color: AppColor.darkGreenLogoColor,
      ),
      onRatingUpdate:onRattingUpdate ,
      updateOnDrag: true,
    );
  }
}