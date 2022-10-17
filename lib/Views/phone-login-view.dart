import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Constants/routes.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/common_widget.dart';

class PhoneLoginview extends StatefulWidget {
  const PhoneLoginview({Key? key}) : super(key: key);

  @override
  State<PhoneLoginview> createState() => _PhoneLoginviewState();
}

class _PhoneLoginviewState extends State<PhoneLoginview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const AppLogoWidget(),
          SizedBoxWidget(flex: 1, height: 40),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: InternationalPhoneNumberInput(
              onInputChanged: (value) {},
            ),
          ),
          ElevatedButtonWidget(
            btnColor: AppColor.lightGreenLogoColor,
            onClickBtn: () {
              Navigator.pushNamed(context, loginVerificationRoute);
            },
            btnText: 'Send Code',
          ),
          SizedBoxWidget(flex: 1, height: 40),
          const SignUpTextWidget(),
        ],
      ),
    ));
  }
}
