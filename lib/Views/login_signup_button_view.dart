import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Constants/routes.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';

class LogInSignButtonView extends StatelessWidget {
  const LogInSignButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColor.scaffoldColor,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColor.scaffoldColor,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButtonWidget(
                    btnColor: AppColor.lightGreenLogoColor,
                    onClickBtn: () {
                      Navigator.pushNamed(context, phoneLogin);
                    },
                    btnText: 'Log In',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButtonWidget(
                    btnColor: AppColor.lightGreenLogoColor,
                    onClickBtn: () {
                      Navigator.pushNamed(context, phoneSignUp);
                    },
                    btnText: 'Sign Up',
                  )
                ],
              ),
            )));
  }
}
