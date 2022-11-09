import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/common_widget.dart';

class LinkInvitationView extends StatelessWidget {
  const LinkInvitationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBoxWidget(
                flex: 1,
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                height: 180,
                width: 320,
                decoration: BoxDecoration(
                    color: AppColor.rulesContainerColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Image.asset(
                      AppIconsCls.emailWhiteIcon,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'You\' have Got Mail',
                      style: kTextStyleShareLink,
                    )
                  ],
                ),
              ),
              SizedBoxWidget(
                flex: 2,
                height: 70,
              ),
              Container(
                height: 120,
                width: 320,
                decoration: BoxDecoration(
                    color: AppColor.lightGreenLogoColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Flexible(
                    child: Text(
                      'Dear friend the\n peace begins\n with a smile.',
                      style: kTextStyleShareLink,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBoxWidget(
                flex: 1,
                height: 20,
              ),
              Container(
                height: 120,
                width: 320,
                decoration: BoxDecoration(
                    color: AppColor.redChallegContainer,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    'Let\'s solve our \nmisunderstanding \nPeace is Possible.',
                    style: kTextStyleShareLink,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBoxWidget(
                flex: 1,
                height: 20,
              ),
              Image.asset(AppIconsCls.smileEmojiIcon),
              SizedBoxWidget(
                flex: 1,
                height: 30,
              ),
              ElevatedButtonWidget(
                  btnHeight: 40,
                  btnWidth: 200,
                  btnText: 'ACCEPT',
                  onClickBtn: () {},
                  btnColor: AppColor.lightGreenLogoColor),
            ],
          )),
    ));
  }
}
