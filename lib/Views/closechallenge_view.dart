import 'package:flutter/material.dart';
import 'package:people_talk/widgets/challenges_widget.dart';

class CloseChallengeView extends StatelessWidget {
  const CloseChallengeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ContainerOpenCloseChallengWidget(
                    isOpenChallenge: false,
                    index: index,
                  );
                })));
  }
}
