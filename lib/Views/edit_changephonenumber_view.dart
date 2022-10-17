import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Constants/routes.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/common_widget.dart';

class EditPhoneNumberChangeView extends StatelessWidget {
  const EditPhoneNumberChangeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBoxWidget(flex: 1, height: 80),
          const AppLogoWidget(),
          SizedBoxWidget(flex: 1, height: 150),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: InternationalPhoneNumberInput(
              onInputChanged: (value) {},
            ),
          ),
          SizedBoxWidget(flex: 1, height: 70),
          ElevatedButtonWidget(
            btnColor: AppColor.lightGreenLogoColor,
            onClickBtn: () {
              Navigator.pushNamed(context, loginVerificationRoute);
            },
            btnText: 'Send Code',
          ),
        ],
      ),
    ));
  }
}
