import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/challenges_widget.dart';
import 'package:people_talk/widgets/common_widget.dart';

class GetReservedView extends StatelessWidget {
  const GetReservedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Text(
            'Get Reerved',
            style: kTextStyleHeding,
          ),
          ContainerOpenCloseChallengWidget(
            isReadContainer: true,
            isOpenChallenge: true,
          ),
          SizedBoxWidget(flex: 1, height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ThumbWidget(
                imagePath: AppIconsCls.thumsUp,
                ontap: () {},
              ),
              ThumbWidget(
                imagePath: AppIconsCls.thumsDown,
                ontap: () {},
              ),
            ],
          ),
        ],
      ),
    )));
  }
}
