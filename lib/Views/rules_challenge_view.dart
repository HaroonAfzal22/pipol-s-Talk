import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';

class RulesView extends StatelessWidget {
  const RulesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.scaffoldColor,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColor.grayLogoColor,
              ))),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RuleViewContainer(
              color: AppColor.rulesContainerColor,
              text: 'RULES OF CHALLENGE',
            ),
            RuleViewContainer(
              color: AppColor.redChallegContainer,
              text: 'No Name',
            ),
            RuleViewContainer(
              color: AppColor.lightGreenLogoColor,
              text: 'NO PERSONAL REFERENCES',
            ),
            RuleViewContainer(
              color: AppColor.redChallegContainer,
              text: 'NO SITE NAMES OR SIMILAR',
            ),
            RuleViewContainer(
              color: AppColor.lightGreenLogoColor,
              text: 'NO VIOLENT EXPRESSIONS',
            ),
            //--------
            RuleViewContainer(
              color: AppColor.redChallegContainer,
              text: 'NO OFFENSES/MENACE',
            ),
            RuleViewContainer(
              color: AppColor.lightGreenLogoColor,
              text: 'NO IMPROPER USE',
            ),
            RightArrowButton(pressBtn: () {})
          ],
        ),
      ),
    ));
  }
}

class RuleViewContainer extends StatelessWidget {
  RuleViewContainer({required this.color, required this.text});
  Color color;
  String text;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: 300,
        height: 60,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          text,
          style: kIconButtonTextStyle,
        )),
      ),
    );
  }
}
