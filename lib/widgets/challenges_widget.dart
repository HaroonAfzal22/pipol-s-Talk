import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/common_widget.dart';
import '../Constants/app_constants.dart';

class ContainerOpenCloseChallengWidget extends StatelessWidget {
  ContainerOpenCloseChallengWidget(
      {this.index, this.isOpenChallenge, this.isReadContainer});
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
                    borderRadius: BorderRadius.circular(15)),
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
                          height: 40,
                          width: 40,
                          child: ImageAssetWidget(
                              imgPath: AppIconsCls.redMessageIcon,
                              imageOnTap: () {}),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: AppColor.lightGreenLogoColor,
                              borderRadius: BorderRadius.circular(100)),
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
