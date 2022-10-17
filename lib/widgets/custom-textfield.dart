import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';

class customTextField extends StatelessWidget {
  customTextField(
      {required this.hintTxt,
      required this.lable,
      required this.tIcon,
      required this.tKeyBoardType});
  String lable;
  String hintTxt;
  IconData tIcon;
  TextInputType tKeyBoardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          alignment: Alignment.topLeft,
          child: Text(
            lable,
            style: kSubHeadingStyle,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
              keyboardType: tKeyBoardType,
              decoration: InputDecoration(
                labelText: hintTxt,
                icon: Icon(tIcon), //icon at head of input
              )),
        ),
      ],
    );
  }
}
