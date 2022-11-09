import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/challenges_widget.dart';
import 'package:people_talk/widgets/common_widget.dart';

class CallengeDurationView extends StatefulWidget {
  const CallengeDurationView({Key? key}) : super(key: key);

  @override
  State<CallengeDurationView> createState() => _CallengeDurationViewState();
}

class _CallengeDurationViewState extends State<CallengeDurationView> {
  bool status0 = false;
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  bool status4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.scaffoldColor,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColor.grayLogoColor,
              ))),
      body: Container(
        child: Column(
          children: [
            SizedBoxWidget(flex: 0, height: 30),
            Text(
              'Challenge Duration',
              style: kProfileTextStyleHeding,
            ),
            SizedBoxWidget(flex: 0, height: 50),
            SwitchContainerWidget(
              isHideTrue: true,
                width: 260,
                title: 'Video Share',
                onTap: (v) {
                  setState(() {
                    status0 = v;
                  });
                },
                status: status0),
            SizedBoxWidget(flex: 0, height: 30),
            SwitchContainerWidget(
                width: 260,
                title: 'Document Share',
                onTap: (v) {
                  setState(() {
                    status1 = v;
                  });
                },
                status: status1),
            SizedBoxWidget(flex: 0, height: 30),
            SwitchContainerWidget(
                width: 260,
                title: 'Picture Share',
                onTap: (v) {
                  setState(() {
                    status2 = v;
                  });
                },
                status: status2),
            SizedBoxWidget(flex: 0, height: 30),
            SwitchContainerWidget(
                width: 260,
                title: 'Picture Share',
                onTap: (v) {
                  setState(() {
                    status3 = v;
                  });
                },
                status: status3),
            SizedBoxWidget(flex: 0, height: 30),
            SwitchContainerWidget(
                width: 260,
                title: 'Picture Share',
                onTap: (v) {
                  setState(() {
                    status4 = v;
                  });
                },
                status: status4),
            SizedBoxWidget(flex: 0, height: 60),
            ElevatedButtonWidget(
                btnHeight: 40,
                btnWidth: 200,
                btnText: 'Save',
                onClickBtn: () {},
                btnColor: AppColor.lightGreenLogoColor)
          ],
        ),
      ),
    );
  }
}
