import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/challenges_widget.dart';
import 'package:people_talk/widgets/common_widget.dart';
import 'package:people_talk/widgets/custom-textfield.dart';

const String sampleText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Rhoncus urna neque viverra justo nec ultrices dui.';

class InvitaionAcceptView extends StatefulWidget {
  InvitaionAcceptView({Key? key}) : super(key: key);

  @override
  State<InvitaionAcceptView> createState() => _InvitaionAcceptViewState();
}

class _InvitaionAcceptViewState extends State<InvitaionAcceptView> {
  ScrollController _scrollController = ScrollController();
  bool status = false;
  bool isBoxColor = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 20,
            ),
            const ImageRedBarIconWidget(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Describe Your\n Problem',
              textAlign: TextAlign.center,
              style: kTextStyleHeding,
            ),
            const SizedBox(
              height: 20,
            ),
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
            const SizedBox(
              height: 15,
            ),
            ElevatedButtonWidget(
                btnHeight: 40,
                btnWidth: 150,
                btnText: 'Save',
                onClickBtn: () {},
                btnColor: AppColor.lightGreenLogoColor),
            const SizedBox(
              height: 70,
            ),
            SwitchContainerWidget(
                activeColor: AppColor.redChallegContainer,
                isHideTrue: true,
                color: AppColor.redChallegContainer,
                width: 300,
                title: 'Document Share',
                onTap: (v) {
                  setState(() {
                    status = v;
                  });
                },
                status: status),
            const SizedBox(
              height: 25,
            ),
            CheckBoxWidget(
              width: 30,
              height: 30,
              widthbtn: 300,
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
              title: 'I am responsible for the shared \n documents',
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButtonWidget(
                btnHeight: 45,
                btnWidth: 250,
                btnText: 'JOIN CHALLENGE',
                onClickBtn: () {},
                btnColor: AppColor.lightGreenLogoColor),
          ],
        )),
      ),
    ));
  }
}
