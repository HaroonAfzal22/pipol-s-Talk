import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/common_widget.dart';

class ReservedView extends StatelessWidget {
  const ReservedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBoxWidget(flex: 1, height: 60),
              Container(
                height: 150,
                width: 150,
                child: Image.asset(AppIconsCls.reserved),
              ),
              SizedBoxWidget(flex: 1, height: 10),
              Text(
                'Reserved',
                style: kjurryScreenTextStyleHeding,
              ),
              SizedBoxWidget(flex: 1, height: 50),
              Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                    color: AppColor.redChallegContainer,
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Text(
                    'You’ll be part of the challenge after a withdrawal',
                    textAlign: TextAlign.center,
                    style: kIconButtonTextStyle,
                  ),
                ),
              )
            ],
          )),
    ));
  }
}
