import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/common_widget.dart';

class ShareLinkView extends StatelessWidget {
  ShareLinkView({Key? key}) : super(key: key);
  String text = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBoxWidget(flex: 1, height: 50),
            Text(
              'Share your \ninvitation',
              style: kInviteViewTextStyleHeding,
            ),
            SizedBoxWidget(flex: 1, height: 50),
            Container(
              height: 200,
              width: 350,
              color: AppColor.challengeIconColor,
              child: Center(
                  child: Text(
                'Hello\ncopy the link and send it\nto your challenger.',
                style: kinnerBoxTextStyle,
              )),
            ),
            SizedBoxWidget(flex: 1, height: 60),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              color: AppColor.dateConatinerColor,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('meet.google.com/tmt-oexr-tdv'),
                    IconButton(
                        onPressed: () {
                          text = 'meet.google.com/tmt-oexr-tdv';
                          Clipboard.setData(const ClipboardData(
                              text: 'meet.google.com/tmt-oexr-tdv'));
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Copied to clipboard')));
                        },
                        icon: const Icon(
                          Icons.copy,
                          color: AppColor.grayLogoColor,
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
