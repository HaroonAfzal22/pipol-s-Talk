import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/common_widget.dart';
import 'package:people_talk/widgets/ratting_star_widget.dart';

class PremimumUserProfileView extends StatefulWidget {
  const PremimumUserProfileView({Key? key}) : super(key: key);

  @override
  State<PremimumUserProfileView> createState() =>
      _PremimumUserProfileViewState();
}

class _PremimumUserProfileViewState extends State<PremimumUserProfileView> {
  @override
  Widget build(BuildContext context) {
    late double rating = 1.0;
    IconData? _selectedIcon;
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Jonathan J.',
              style: kProfileTextStyleHeding,
            ),
            const CameraIconWidget(),

            Text(
              'user since April 2007',
              style: kProfileTextStyleSubHeding,
            ),
            Container(
                height: 50,
                width: 50,
                child: ImageAssetWidget(
                    imgPath: AppImages.diamondImage, imageOnTap: () {})),

            ElevatedButtonWithRightArrow(
              onPress: () {},
              btnText: 'Profile Setting',
              iconPah: AppIconsCls.profileIcon,
            ),
            ElevatedButtonWithRightArrow(
              onPress: () {},
              btnText: 'Challenges',
              iconPah: AppIconsCls.victoryHandIcon,
            ),
            ElevatedButtonWithRightArrow(
              onPress: () {},
              btnText: ' Create Challenges',
              iconPah: AppIconsCls.createChallengeIcon,
            ),
            ElevatedButtonWithRightArrow(
              onPress: () {},
              btnText: ' Invite Friends',
              iconPah: AppIconsCls.latterIcon,
            ),
            SizedBoxWidget(flex: 1, height: 20),
// --------------Ratting Star Widget--------------------------
            RatingStarWidget(
              selectedIcon: _selectedIcon,
              initialRationg: rating,
              onRattingUpdate: (rating) {
                setState(() {
                  rating = rating;
                });
              },
            )
          ],
        ),
      ),
    ));
  }
}
