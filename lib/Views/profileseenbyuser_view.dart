import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Constants/routes.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/common_widget.dart';
import 'package:people_talk/widgets/ratting_star_widget.dart';

class ProfileSeenByUserView extends StatefulWidget {
  const ProfileSeenByUserView({Key? key}) : super(key: key);

  @override
  State<ProfileSeenByUserView> createState() => _ProfileSeenByUserViewState();
}

class _ProfileSeenByUserViewState extends State<ProfileSeenByUserView> {
  @override
  Widget build(BuildContext context) {
    late double rating = 1.0;
    IconData? _selectedIcon;

    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBoxWidget(flex: 1, height: 40),
            Text(
              'Jonathan J.',
              style: kProfileTextStyleHeding,
            ),
            SizedBoxWidget(flex: 0, height: 10),
            const CameraIconWidget(),
            SizedBoxWidget(flex: 0, height: 10),
            Text(
              'user since April 2007',
              style: kProfileTextStyleSubHeding,
            ),
            SizedBoxWidget(flex: 1, height: 80),
            ElevatedButtonWithRightArrow(
              onPress: () {
                Navigator.pushNamed(context, freeUserProfileRoute);
              },
              btnText: 'Challenges',
              iconPah: AppIconsCls.victoryHandIcon,
            ),
            SizedBoxWidget(flex: 1, height: 70),
            Align(
              alignment: const Alignment(-0.7, 0),
              child: Text(
                'Votation Ranking',
                style: kProfileTextStyleBottomHeding,
              ),
            ),
            SizedBoxWidget(flex: 1, height: 10),
            Align(
              alignment: const Alignment(-0.6, 0),
              child: RatingStarWidget(
                selectedIcon: _selectedIcon,
                initialRationg: rating,
                onRattingUpdate: (rating) {
                  setState(() {
                    rating = rating;
                  });
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
