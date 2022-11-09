import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/challenges_widget.dart';
import 'package:people_talk/widgets/common_widget.dart';

const String sampleText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Rhoncus urna neque viverra justo nec ultrices dui.';

class InviteJuryView extends StatelessWidget {
  const InviteJuryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBoxWidget(flex: 0, height: 30),
            const Flexible(flex: 4, child: const ImageRedBarIconWidget()),
            Text(
              'Description A',
              style: kTextStyleHeding,
            ),
            MessageBoxWidget(
              text: sampleText,
            ),
            Text(
              'Description B',
              style: kTextStyleHeding,
            ),
            MessageBoxWidget(
              text: sampleText,
              isDesB: true,
            ),
            SizedBoxWidget(flex: 1, height: 40),
            ElevatedButtonWidget(
                btnHeight: 40,
                btnWidth: 200,
                btnText: 'ACCEPT',
                onClickBtn: () {},
                btnColor: AppColor.lightGreenLogoColor),
          ],
        ),
      ),
    ));
  }
}
