import 'package:flutter/material.dart';
import 'package:people_talk/widgets/challenges_widget.dart';
class GetReservedView extends StatelessWidget {
  const GetReservedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body:Column(children: [
              ContainerOpenCloseChallengWidget(
                   isReadContainer: true,
                    
                  ),
            ],)));
  }
}