import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';

class ChallengeIconWithTextWidget extends StatelessWidget {
  ChallengeIconWithTextWidget({required this.text, required this.onTap});
  String text;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 100,
      child: Column(
        children: [
          ChallengesIconsWidget(
            iconPath: AppIconsCls.openLock,
            onTap: onTap,
          ),
          SizedBoxWidget(flex: 1, height: 12),
          Text(
            text,
            style: kChallengesViewTextStyle,
          ),
        ],
      ),
    );
  }
}


//-------------------

class ChallengesIconsWidget extends StatelessWidget {
  ChallengesIconsWidget({required this.iconPath, required this.onTap});
  String iconPath;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColor.challengeIconColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ]),
        height: 50,
        width: 50,
        child: ImageAssetWidget(imgPath: iconPath, imageOnTap: onTap));
  }
}

//-------

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(child: Image.asset(AppImages.ptlogo)),
    );
  }
}

class SizedBoxWidget extends StatelessWidget {
  SizedBoxWidget({required this.flex, required this.height});
  double height;
  int flex;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: SizedBox(
        height: height,
      ),
    );
  }
}

// Avatar Card Widget
class AvatarCardWidget extends StatelessWidget {
  AvatarCardWidget({required this.selectedIndex, required this.listIndex});
  int selectedIndex;
  int listIndex;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 2,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Visibility(
              visible: selectedIndex != null && selectedIndex == listIndex
                  ? true
                  : false,
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: AppColor.grayLogoColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: Image.asset(AppIconsCls.tickImage),
                ),
              ),
            ),
            Flexible(child: Image.asset(AppImages.vatar)),
            const Text(
              'Artist',
              style: kubHeadingStyle2,
            ),
          ],
        ),
      ),
    );
  }
}

// Image asset widget
class ImageAssetWidget extends StatelessWidget {
  ImageAssetWidget({required this.imgPath, required this.imageOnTap});
  String imgPath;
  var imageOnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: imageOnTap,
        child: Container(width: double.infinity, child: Image.asset(imgPath)));
  }
}

//--- Camera Icon widget
class CameraIconWidget extends StatelessWidget {
  const CameraIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: AppColor.cameraIconOuterColor,
          borderRadius: BorderRadius.circular(100)),
      child: Container(
        margin: EdgeInsets.all(22),
        decoration: BoxDecoration(
            color: AppColor.darkGreenLogoColor,
            borderRadius: BorderRadius.circular(100)),
        child: Image.asset(AppIconsCls.cameraIcon),
      ),
    );
  }
}
