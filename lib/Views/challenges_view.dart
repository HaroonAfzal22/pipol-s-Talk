import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Constants/routes.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/common_widget.dart';

class ChallengesView extends StatelessWidget {
  const ChallengesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBoxWidget(flex: 1, height: 100),
            SizedBox(
                height: 80,
                width: 80,
                child: ImageAssetWidget(
                    imgPath: AppIconsCls.redVictory, imageOnTap: null)),
            ChallengeIconWithTextWidget(
              text: 'Open',
              onTap: () {
                 Navigator.pushNamed(context, openChallengeRoute);
              },
            ),
            ChallengeIconWithTextWidget(
              text: 'Closed',
              onTap: () {
                Navigator.pushNamed(context, closeChallengeRoute);
              },
            ),
            ChallengeIconWithTextWidget(
              text: 'Create Challenge',
              onTap: () {},
            ),
            ChallengeIconWithTextWidget(
              text: 'reserve Challege',
              onTap: () {},
            ),
          ],
        ),
      ),
    ));
  }
}
