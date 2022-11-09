import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:people_talk/Utilities/container_decoration.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/common_widget.dart';
import '../Constants/app_constants.dart';

class ContainerOpenCloseChallengWidget extends StatelessWidget {
  ContainerOpenCloseChallengWidget({
    this.index,
    this.isOpenChallenge,
    this.isReadContainer,
  });
  int? index;
  bool? isOpenChallenge;
  bool? isReadContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
            height: 450,
            width: double.infinity,
            decoration: isReadContainer == false
                ? BoxDecoration(
                    color: index!.isEven
                        ? AppColor.challengeIconColor
                        : AppColor.dateConatinerColor,
                    borderRadius: BorderRadius.circular(15))
                : BoxDecoration(
                    color: AppColor.redChallegContainer,
                    borderRadius: BorderRadius.circular(60)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: RichText(
                          text: TextSpan(
                              text: 'Jack Vagabond ',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                              children: [
                                TextSpan(
                                    text: 'posted in',
                                    style: kCloseChallengeTextStyle),
                                TextSpan(
                                  text: ' Watercoo',
                                  style: kBoldCloseChallengeNameTextStyle,
                                )
                              ]),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: AppColor.dateConatinerColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Text(
                          '21 jan 1',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 220,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(15),
                    width: double.infinity,
                    height: 170,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: AppColor.dateConatinerColor),
                            child: Image.asset(
                              AppIconsCls.copyTextIcon,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 4,
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            width: 250,
                            height: double.infinity,
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolor e magna aliqua.  Rhoncus urna neque viverra justo nec ultrices dui.',
                              style: kinnerBoxTextStyle,
                            ),
                          ),
                        ),
                      ],
                    )),
                Visibility(
                  visible: isOpenChallenge == true ? false : true,
                  child: Align(
                    alignment: const Alignment(-0.7, 0),
                    child: ElevatedButtonWidget(
                        smartBtn: true,
                        btnPadding: 10,
                        btnHeight: 30,
                        btnWidth: 120,
                        btnText: 'result',
                        onClickBtn: () {},
                        btnColor: AppColor.lightGreenLogoColor),
                  ),
                ),
                Visibility(
                  visible: isOpenChallenge == true ? true : false,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              bottom: isOpenChallenge == true ? 20 : 1),
                          height: isOpenChallenge == true ? 60 : 40,
                          width: isOpenChallenge == true ? 50 : 40,
                          child: ImageAssetWidget(
                              imgPath: isOpenChallenge == true
                                  ? AppIconsCls.messageIconWhite
                                  : AppIconsCls.redMessageIcon,
                              imageOnTap: () {}),
                        ),
                        Visibility(
                          visible: isOpenChallenge == true ? false : true,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: AppColor.lightGreenLogoColor,
                                borderRadius: BorderRadius.circular(100)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//------ Thumb widget
class ThumbWidget extends StatelessWidget {
  ThumbWidget({required this.imagePath, required this.ontap});
  String imagePath;
  VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColor.lightGreenLogoColor,
            borderRadius: BorderRadius.circular(100)),
        height: 80,
        width: 80,
        child: ImageAssetWidget(imgPath: imagePath, imageOnTap: ontap));
  }
}

// Rating Slider
class MessageBoxWidget extends StatelessWidget {
  MessageBoxWidget({
    required this.text,
    this.isDesB,
    Key? key,
  }) : super(key: key);
  bool? isDesB;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
      color: AppColor.dateConatinerColor,
      height: 200,
      width: 250,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppIconsCls.textBoxSmallIcon),
          Expanded(
            child: Container(
              height: double.infinity,
              margin: EdgeInsets.only(
                  top: 15,
                  left: isDesB == true ? 0 : 15,
                  right: 15,
                  bottom: 15),
              color: isDesB == true ? Colors.white : null,
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Text(
                text,
                style: kinnerBoxTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}

//------------------
class SliderTittleWidget extends StatelessWidget {
  SliderTittleWidget({required this.tittle});
  String tittle;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(-0.7, 0),
      child: Text(
        tittle,
        style: kubHeadingStyle2,
      ),
    );
  }
}

/*
*/

class CheckBoxWidget extends StatelessWidget {
  CheckBoxWidget(
      {this.isBoxColor,
      required this.onTap,
      required this.title,
      this.widthbtn,
      this.isCrown,
      this.height,
      this.width});
  bool? isBoxColor;
  String title;
  double? widthbtn;
  VoidCallback onTap;
  bool? isCrown;
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthbtn ?? 130,
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: height ?? 40,
              width: width ?? 38,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isBoxColor == true
                      ? AppColor.checkBoxFilledColor
                      : AppColor.scaffoldColor,
                  border: Border.all(
                      color: AppColor.checkBoxBorderColor, width: 3.5)),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: kBoldCloseChallengeNameTextStyle,
          ),
          Visibility(
            visible: isCrown ?? false,
            child: Container(
              margin: EdgeInsets.only(left: 8),
              child: Image.asset(
                AppIconsCls.crownIcon,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SliderWidget extends StatelessWidget {
  SliderWidget({
    required this.OnTap,
    required this.sliderValue,
    required this.text,
    this.sideText,
    this.activeColor,
    this.inActiveColor,
  });
  Color? inActiveColor;
  Color? activeColor;
  String text;
  int sliderValue;
  bool? sideText;
  var OnTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 30, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SliderTheme(
            data: AppDecoration.sliderThemeData(
                context, inActiveColor, activeColor),
            child: Expanded(
              child: Slider(
                  value: sliderValue.toDouble(),
                  min: 0,
                  max: 8,
                  onChanged: OnTap),
            ),
          ),
          sideText == false
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColor.rulesContainerColor),
                  child: Image.asset(
                    AppIconsCls.crownIcon,
                    color: Colors.white,
                  ),
                )
              : Text(
                  text,
                  style: kubHeadingStyle2,
                ),
        ],
      ),
    );
  }
}

//-----
class CheckBoxRowWidget extends StatelessWidget {
  CheckBoxRowWidget(
      {required this.isBoxColorF,
      required this.isBoxColorS,
      required this.onTapF,
      required this.titleF,
      required this.titleS,
      required this.onTapS,
      this.isCrownF,
      this.isCrownS,
      this.rowWidth});
  bool isBoxColorF;
  bool isBoxColorS;
  String titleF;
  String titleS;
  VoidCallback onTapF;
  VoidCallback onTapS;
  bool? isCrownF;
  bool? isCrownS;
  double? rowWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CheckBoxWidget(
            widthbtn: rowWidth,
            title: titleF,
            isBoxColor: isBoxColorF,
            onTap: onTapF,
            isCrown: isCrownF,
          ),
          CheckBoxWidget(
            widthbtn: rowWidth,
            title: titleS,
            isBoxColor: isBoxColorS,
            onTap: onTapS,
            isCrown: isCrownS,
          ),
        ],
      ),
    );
  }
}

// ---ChechBoxRadio Button
class CheckBoxRadioButton extends StatelessWidget {
  CheckBoxRadioButton(
      {required this.onTap, this.selectChellenger, required this.title});
  VoidCallback onTap;
  var selectChellenger;
  String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 40,
            width: 38,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: selectChellenger
                    ? AppColor.checkBoxFilledColor
                    : AppColor.scaffoldColor,
                border: Border.all(
                    color: AppColor.checkBoxBorderColor, width: 3.5)),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: kBoldCloseChallengeNameTextStyle,
        ),
      ],
    );
  }
}

//CheckBox With Crown
class CheckBoxRadioCrown extends StatelessWidget {
  CheckBoxRadioCrown(
      {this.iSCrownVisible,
      required this.onTap,
      required this.title,
      this.desicionJuryYung});
  String title;
  VoidCallback onTap;
  bool? iSCrownVisible;
  var desicionJuryYung;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
                height: 40,
                width: 38,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.dateConatinerColor,
                    border: Border.all(
                        color: AppColor.checkBoxBorderColor, width: 3.5)),
                child: desicionJuryYung
                    ? Image.asset(AppIconsCls.crownIcon)
                    : Image.asset(
                        AppIconsCls.crownIcon,
                        color: AppColor.dateConatinerColor,
                      )),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: kBoldCloseChallengeNameTextStyle,
          ),
        ],
      ),
    );
  }
}

// Radio button

class SwitchButtonWidget extends StatelessWidget {
  SwitchButtonWidget(
      {required this.onTap, required this.status, this.activeColor});

  var onTap;
  bool status;
  Color? activeColor;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      padding: 0.5,
      activeSwitchBorder: Border.all(
        color: AppColor.scaffoldColor,
        width: 4.0,
      ),
      inactiveSwitchBorder: Border.all(
        color: AppColor.scaffoldColor,
        width: 4.0,
      ),
      inactiveColor: AppColor.lightGreenLogoColor,
      toggleColor: AppColor.scaffoldColor,
      width: 45.0,
      height: 30.0,
      borderRadius: 30.0,
      activeColor: activeColor ?? AppColor.rulesContainerColor,
      value: status,
      onToggle: onTap,
    );
  }
}

//------------
class SwitchContainerWidget extends StatelessWidget {
  SwitchContainerWidget(
      {required this.onTap,
      required this.status,
      required this.title,
      this.height,
      this.width,
      this.isHideTrue,
      this.color,
      this.activeColor});
  var onTap;
  bool status;
  String title;
  double? height;
  double? width;
  bool? isHideTrue;
  Color? color;
  Color? activeColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width ?? 300,
            height: height ?? 60,
            decoration: BoxDecoration(
                color: color ?? AppColor.lightGreenLogoColor,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: kChellengeTextStyle,
                ),
                SwitchButtonWidget(
                  status: status,
                  onTap: onTap,
                  activeColor: activeColor,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Image.asset(
            AppIconsCls.crownIcon,
            color: isHideTrue == true ? AppColor.scaffoldColor : null,
          )
        ],
      ),
    );
  }
}
