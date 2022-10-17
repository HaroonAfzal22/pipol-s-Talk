import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Constants/routes.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/common_widget.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';

class SignUpPhoneConfirmCodeView extends StatefulWidget {
  const SignUpPhoneConfirmCodeView({Key? key}) : super(key: key);

  @override
  State<SignUpPhoneConfirmCodeView> createState() =>
      _SignUpPhoneConfirmCodeViewState();
}

class _SignUpPhoneConfirmCodeViewState
    extends State<SignUpPhoneConfirmCodeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Confirmation',
            style: kTextStyleHeding,
          ),
          Text(
            'Enter the 4 digit code sent on your phone',
            style: kSubHeadingStyle,
          ),
          SizedBoxWidget(
            flex: 0,
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CodeTextFieldWidget(),
              CodeTextFieldWidget(),
              CodeTextFieldWidget(),
              CodeTextFieldWidget(),
            ],
          ),
          SizedBoxWidget(
            flex: 0,
            height: 50,
          ),
          Column(
            children: [
              ElevatedButtonWidget(
                btnColor: AppColor.lightGreenLogoColor,
                onClickBtn: () {
                  Navigator.pushNamed(context, setupProfileRoute);
                },
                btnText: 'Confirm',
              ),
              SizedBoxWidget(
                flex: 0,
                height: 20,
              ),
              Text(
                'Resend Code',
                style: kSendCodeTextStyle,
              ),
              SizedBoxWidget(
                flex: 0,
                height: 20,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
