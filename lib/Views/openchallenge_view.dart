import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/widgets/challenges_widget.dart';
import 'package:people_talk/widgets/common_widget.dart';

class OpenChallengview extends StatelessWidget {
  const OpenChallengview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(25),
          height: 120,
          width: 120,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            child: ImageAssetWidget(
                imgPath: AppIconsCls.verticalhandArrow, imageOnTap: () {}),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ContainerOpenCloseChallengWidget(
                  isOpenChallenge: true,
                  index: index,
                );
              }),
        ),
      ],
    )));
  }
}
