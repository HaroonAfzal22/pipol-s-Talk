import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/common_widget.dart';

class SorryView extends StatelessWidget {
  const SorryView({Key? key}) : super(key: key);

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
                height: 100,
                width: 100,
                child: Image.asset(AppIconsCls.sadEmogy),
              ),
              SizedBoxWidget(flex: 1, height: 40),
              Text(
                'Sorry',
                style: kjurryScreenTextStyleHeding,
              ),
              SizedBoxWidget(flex: 1, height: 40),
              Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                    color: AppColor.redChallegContainer,
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Text(
                    'The jury has been selected',
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
