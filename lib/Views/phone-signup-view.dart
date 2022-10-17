import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Constants/routes.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/custom-textfield.dart';

class PhoneSignUpView extends StatefulWidget {
  const PhoneSignUpView({Key? key}) : super(key: key);

  @override
  State<PhoneSignUpView> createState() => _PhoneSignUpViewState();
}

class _PhoneSignUpViewState extends State<PhoneSignUpView> {
  bool status = false;
  bool status2 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: Column(
        children: [
          Flexible(
            flex: 6,
            child: Container(
                margin: const EdgeInsets.only(right: 30),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.24,
                child: Image.asset(AppImages.ptlogo)),
          ),
          customTextField(
            lable: 'Nickname',
            hintTxt: 'Enter your nick name',
            tIcon: Icons.person,
            tKeyBoardType: TextInputType.name,
          ),
          const Flexible(
              child: SizedBox(
            height: 20,
          )),
          customTextField(
            lable: 'Phone',
            hintTxt: 'Enter mobile no',
            tIcon: Icons.phone_iphone_outlined,
            tKeyBoardType: TextInputType.phone,
          ),
          const Flexible(
              child: SizedBox(
            height: 20,
          )),
          customTextField(
            lable: 'Date of Birth',
            hintTxt: 'Enter DOB',
            tIcon: Icons.phone_iphone_outlined,
            tKeyBoardType: TextInputType.datetime,
          ),
          const Flexible(
              child: SizedBox(
            height: 20,
          )),
          customTextField(
            lable: 'Zip Code',
            hintTxt: 'Enter Zip Code',
            tIcon: Icons.phone_iphone_outlined,
            tKeyBoardType: TextInputType.phone,
          ),
          const Flexible(
              child: SizedBox(
            height: 20,
          )),
          CutomFlutterSWitch(
            lable: 'Terms and conditions',
            status: status,
            onTap: (v) {
              setState(() {
                status = v;
              });
            },
          ),
          const Flexible(
              child: SizedBox(
            height: 20,
          )),
          CutomFlutterSWitch(
            lable: 'Privacy',
            status: status2,
            onTap: (s) {
              setState(() {
                status2 = s;
              });
            },
          ),
          const Flexible(
              child: SizedBox(
            height: 30,
          )),
          ElevatedButtonWidget(
            btnColor: AppColor.lightGreenLogoColor,
            btnText: 'Continue',
            onClickBtn: () {
              Navigator.of(context).pushNamed(signUpPhoneConfirmCodeRoute);
            },
          )
        ],
      ),
    ));
  }
}
/*
  */