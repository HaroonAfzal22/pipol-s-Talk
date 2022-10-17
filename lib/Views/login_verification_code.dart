import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/common_widget.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';

class LoginVerificationCodeView extends StatefulWidget {
  const LoginVerificationCodeView({Key? key}) : super(key: key);

  @override
  State<LoginVerificationCodeView> createState() =>
      _LoginVerificationCodeViewState();
}

class _LoginVerificationCodeViewState extends State<LoginVerificationCodeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const AppLogoWidget(),
          Text(
            'Enter Code',
            style: kTextStyleHeding,
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
                  // Navigator.pushNamed(context, loginVerificationRoute);
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
              const SignUpTextWidget(),
            ],
          ),
        ],
      ),
    ));
  }
}
