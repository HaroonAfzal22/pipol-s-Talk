import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Constants/routes.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/common_widget.dart';
import 'package:people_talk/widgets/ratting_star_widget.dart';

class FreeUserProfileView extends StatefulWidget {
  const FreeUserProfileView({Key? key}) : super(key: key);

  @override
  State<FreeUserProfileView> createState() => _FreeUserProfileViewState();
}

class _FreeUserProfileViewState extends State<FreeUserProfileView> {
  late double rating = 1.0;
  IconData? _selectedIcon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBoxWidget(flex: 1, height: 10),
            Text(
              'Jonathan J.',
              style: kProfileTextStyleHeding,
            ),
            const CameraIconWidget(),

            Text(
              'user since April 2007',
              style: kProfileTextStyleSubHeding,
            ),

            ElevatedButtonWithRightArrow(
              onPress: () {
                Navigator.of(context).pushNamed(editProfileRoute);
              },
              btnText: 'Profile Setting',
              iconPah: AppIconsCls.profileIcon,
            ),
            ElevatedButtonWithRightArrow(
              onPress: () {
                Navigator.pushNamed(context, challengesRoute);
              },
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
            ElevatedButtonWithRightArrow(
              onPress: () {},
              btnText: ' how you work',
              iconPah: AppIconsCls.latterIcon,
            ),

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
