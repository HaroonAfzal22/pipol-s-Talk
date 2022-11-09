import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';

abstract class AppDecoration {
 static  sliderThemeData(context, active,inacrive) {
  return SliderTheme.of(context).copyWith(
    inactiveTrackColor: inacrive ?? AppColor.inActivestarColor,
    activeTrackColor:active ?? AppColor.redChallegContainer,
    thumbColor: inacrive ?? AppColor.inActivestarColor,
    overlayColor:active ?? AppColor.redChallegContainer,
    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
    overlayShape: const RoundSliderOverlayShape(overlayRadius: 20.0),
  );
}
}
