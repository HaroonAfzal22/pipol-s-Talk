import 'package:flutter/material.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/challenges_widget.dart';
import 'package:people_talk/widgets/common_widget.dart';
import 'package:people_talk/widgets/custom-textfield.dart';
import '../Constants/app_constants.dart';

class CreateChallengeView extends StatefulWidget {
  CreateChallengeView({Key? key}) : super(key: key);

  @override
  State<CreateChallengeView> createState() => _CreateChallengeViewState();
}

class _CreateChallengeViewState extends State<CreateChallengeView> {
  ScrollController _scrollController = ScrollController();
  bool isBoxColor = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBoxWidget(flex: 1, height: 40),
            Flexible(
              flex: 1,
              child: Text(
                'Create Challege',
                style: kProfileTextStyleHeding,
              ),
            ),
            SizedBoxWidget(flex: 1, height: 10),
            const Flexible(flex: 3, child: CreateChallegesTopBarIcon()),
            SizedBoxWidget(flex: 1, height: 10),
            Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: ScrollbarTheme(
                  data: ScrollbarThemeData(
                      thumbColor:
                          MaterialStateProperty.all(AppColor.grayLogoColor)),
                  child: Scrollbar(
                    controller: _scrollController,
                    thumbVisibility: true,
                    interactive: true,
                    child: customTextFormfield(
                      scrollcontroller: _scrollController,
                      contentPading: const EdgeInsets.only(top: 50, right: 25),
                      textalign: TextAlign.justify,
                      hintext: 'Description of problem max\n400 characters',
                      hintstyle: kinnerBoxTextStyle,
                      prefixicon: Padding(
                        padding: const EdgeInsets.only(bottom: 120),
                        child: Container(
                          height: 35,
                          width: 35,
                          margin: const EdgeInsets.all(10),
                          child: Image.asset(
                            AppIconsCls.copyTextIconLarge,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      obsecuretext: false,
                    ),
                  ),
                )),
            SizedBoxWidget(flex: 1, height: 30),

            //------------------
            Align(
              alignment: const Alignment(-0.7, 0),
              child: ElevatedButtonWidget(
                  smartBtn: true,
                  btnPadding: 25,
                  btnHeight: 45,
                  btnWidth: 120,
                  btnText: 'result',
                  onClickBtn: () {},
                  btnColor: AppColor.lightGreenLogoColor),
            ),
            SizedBoxWidget(flex: 1, height: 40),

            //----.............

            Container(
              padding: const EdgeInsets.only(right: 30),
              alignment: Alignment.centerLeft,
              child: ElevatedButtonWithRightArrow(
                onPress: () {},
                btnText: 'Challenges Settings',
                btnWidth: 50,
                iconPah: AppIconsCls.challengeSettingIcon,
              ),
            ),

            SizedBoxWidget(flex: 2, height: 80),
            CheckBoxWidget(
              widthbtn: 200,
              isBoxColor: isBoxColor,
              onTap: () {
                setState(() {
                  if (isBoxColor == true) {
                    isBoxColor = false;
                  } else {
                    isBoxColor = true;
                  }
                });
              },
              title: 'I accept the regulation',
            )
          ],
        ),
      )),
    );
  }
}

class CreateChallegesTopBarIcon extends StatelessWidget {
  const CreateChallegesTopBarIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
              color: AppColor.redChallegContainer,
              borderRadius: BorderRadius.circular(15)),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.36,
          top: MediaQuery.of(context).size.width * 0.015,
          child: Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  color: AppColor.challengeIconColor,
                  borderRadius: BorderRadius.circular(100))),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.41,
          top: MediaQuery.of(context).size.width * 0.07,
          child: Container(
            padding: const EdgeInsets.all(15),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: AppColor.dateConatinerColor,
                borderRadius: BorderRadius.circular(100)),
            child: Image.asset(AppIconsCls.barImage),
          ),
        )
      ],
    );
  }
}
