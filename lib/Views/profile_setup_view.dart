import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Constants/routes.dart';
import 'package:people_talk/Views/profileseenbyuser_view.dart';
import 'package:people_talk/widgets/common_widget.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';

class SetupProfileView extends StatelessWidget {
  const SetupProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBoxWidget(flex: 1, height: 20),
            const AppLogoWidget(),
            SizedBoxWidget(flex: 1, height: 50),
            ElevatedButtonWidget(
              btnColor: AppColor.lightGreenLogoColor,
              onClickBtn: () {},
              btnText: 'Select Avatar',
            ),
            ElevatedButtonWidget(
              btnColor: AppColor.lightGreenLogoColor,
              onClickBtn: () {
                Navigator.pushNamed(context, jobRoute);
              },
              btnText: 'Job',
            ),
            ElevatedButtonWidget(
              btnColor: AppColor.lightGreenLogoColor,
              onClickBtn: () {
                Navigator.pushNamed(context, hobbyRoute);
              },
              btnText: 'Hobby',
            ),
            ElevatedButtonWidget(
              btnColor: AppColor.lightGreenLogoColor,
              onClickBtn: () {
                Navigator.pushNamed(context, myBestRoute);
              },
              btnText: 'My Best',
            ),
            SizedBoxWidget(flex: 1, height: 80),
            RightArrowButton(
              pressBtn: () {
                Navigator.of(context).pushNamed(profileSeenByUserRoute);
              },
            ),
            SizedBoxWidget(flex: 0, height: 10),
          ],
        ),
      ),
    ));
  }
}
