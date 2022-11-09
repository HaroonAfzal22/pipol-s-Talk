import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/challenges_widget.dart';
import 'package:people_talk/widgets/common_widget.dart';

const String sampleText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Rhoncus urna neque viverra justo nec ultrices dui.';

class InvitaionOpenView extends StatefulWidget {
  InvitaionOpenView({Key? key}) : super(key: key);

  @override
  State<InvitaionOpenView> createState() => _InvitaionOpenViewState();
}

class _InvitaionOpenViewState extends State<InvitaionOpenView> {
  bool isBoxColor = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBoxWidget(flex: 0, height: 100),
            Container(
                alignment: const Alignment(0.2, 0),
                child: Image.asset(AppIconsCls.mailStarIcon)),
            SizedBoxWidget(flex: 0, height: 20),
            Text(
              'Mr.A has \n Invited You',
              style: kTextStyleHeding,
            ),
            SizedBoxWidget(flex: 0, height: 60),
            InvitaionMessageContainerWidget(
              text: sampleText,
            ),
            SizedBoxWidget(flex: 0, height: 140),
            ElevatedButtonWidget(
                btnHeight: 40,
                btnWidth: 200,
                btnText: 'ACCEPT',
                onClickBtn: () {},
                btnColor: AppColor.lightGreenLogoColor),
            CheckBoxWidget(
              width: 30,
              height: 30,
              widthbtn: 300,
              isBoxColor: isBoxColor,
              onTap: () {
                setState(() {
                  if (isBoxColor == true) {
                    isBoxColor = false;
                  } else {
                    isBoxColor = true;
                  }
                });
              },
              title: 'I am responsible for the shared documents',
            ),
          ],
        ),
      ),
    ));
  }
}
