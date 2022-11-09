import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Constants/routes.dart';
import 'package:people_talk/Utilities/text_style.dart';

class RightArrowButton extends StatelessWidget {
  RightArrowButton({required this.pressBtn});
  VoidCallback pressBtn;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressBtn,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          margin: const EdgeInsets.only(right: 20),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: AppColor.darkGreenLogoColor,
              borderRadius: BorderRadius.circular(100)),
          child: const Icon(
            Icons.chevron_right_sharp,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }
}

// Elevated Button
class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget(
      {this.smartBtn,
      required this.btnText,
      required this.onClickBtn,
      required this.btnColor,
      this.btnHeight,
      this.btnWidth,
      this.btnPadding});
  double? btnHeight;
  double? btnWidth;
  double? btnPadding;
  String btnText;
  VoidCallback onClickBtn;
  Color btnColor;
  bool? smartBtn = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: btnHeight ?? 50, //height of button
      width: btnWidth ?? 300, //
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: btnColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(btnPadding ?? 20.0),
            ),
          ),
          onPressed: onClickBtn,
          child: Text(btnText,
              style: smartBtn == true ? kSmallButtonTextStyle : kButtonTextStyle
              //  TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              )),
    );
  }
}

//Arrow button with Icon And arrow

// Flutter Switch button
class CutomFlutterSWitch extends StatelessWidget {
  CutomFlutterSWitch(
      {required this.lable, required this.onTap, required this.status});
  String lable;
  var onTap;
  bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            lable,
            style: kSubHeadingStyle,
          ),
          FlutterSwitch(
            padding: 0.5,
            activeSwitchBorder: Border.all(
              color: AppColor.redLogoColor,
              width: 4.0,
            ),
            inactiveSwitchBorder: Border.all(
              color: Colors.grey,
              width: 4.0,
            ),
            inactiveColor: Colors.white,
            toggleColor: Colors.grey,
            width: 45.0,
            height: 30.0,
            borderRadius: 30.0,
            activeColor: AppColor.lightGreenLogoColor,
            value: status,
            onToggle: onTap,
          )
        ],
      ),
    );
  }
}
//-----------Code TextField Widget

class CodeTextFieldWidget extends StatelessWidget {
  CodeTextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        autofocus: true,
        textInputAction: TextInputAction.next,
        cursorWidth: 2,
        keyboardType: TextInputType.number,
        cursorColor: AppColor.darkGreenLogoColor,
        style: const TextStyle(
            color: AppColor.darkGreenLogoColor,
            fontSize: 26,
            fontWeight: FontWeight.w900),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 18),
          fillColor: AppColor.textFieldColor,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: AppColor.grayLogoColor),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: '0',
          hintStyle: TextStyle(color: AppColor.grayLogoColor, fontSize: 30),
        ),
      ),
    );
  }
}

// SignUp text widget

class SignUpTextWidget extends StatelessWidget {
  const SignUpTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, phoneSignUp);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Dont have an Account ? ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          Text(
            'Sign up ',
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

// profile pages widgets

class ElevatedButtonWithRightArrow extends StatelessWidget {
  ElevatedButtonWithRightArrow(
      {required this.iconPah, required this.btnText, required this.onPress, this.btnWidth});

  String iconPah;
  double? radius;
  String btnText;
  double? btnWidth;
  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedIconButtonWidget(
            onPress: onPress,
            iconPah: iconPah,
            btnText: btnText,
          ),
           SizedBox(
            width: btnWidth ?? 30,
          ),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 30,
            color: AppColor.darkGreenLogoColor,
          )
        ],
      ),
    );
  }
}

class ElevatedIconButtonWidget extends StatelessWidget {
  ElevatedIconButtonWidget(
      {required this.iconPah,
      this.color,
      this.height,
      this.radius,
      this.width,
      required this.btnText,
      required this.onPress});
  Color? color;
  String iconPah;
  double? height;
  double? width;
  double? radius;
  String btnText;
  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? 220,
      child: ElevatedButton.icon(
        onPressed: onPress,
        icon: Container(
            margin: const EdgeInsets.only(left: 22),
            height: 35,
            width: 35,
            child: Image.asset(
              iconPah,
            )),
        label: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            btnText,
            style: kIconButtonTextStyle,
            textAlign: TextAlign.left,
          ),
        ),
        style: ElevatedButton.styleFrom(
          // padding: const EdgeInsets.symmetric(horizontal: 20),
          primary: color ?? AppColor.lightGreenLogoColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
// 