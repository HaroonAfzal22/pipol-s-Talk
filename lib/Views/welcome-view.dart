import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Constants/routes.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/common_widget.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColor.scaffoldColor,
            body: Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const AppLogoWidget(),
                  SizedBoxWidget(flex: 0, height: 20),
                  Text(
                    'stop or go?',
                    style: kSubHeadingStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBoxWidget(flex: 2, height: 400),
                  RightArrowButton(pressBtn: () {
                    Navigator.pushNamed(context, logInSignButtonRoute);
                  }),
                  SizedBoxWidget(flex: 1, height: 40),
                ],
              ),
            )));
  }
}
