import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Constants/routes.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/common_widget.dart';
import 'package:people_talk/widgets/custom-textfield.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: const Alignment(-0.7, 0),
              child: Text(
                'Edit Profile',
                style: kProfileTextStyleHeding,
              ),
            ),
            customTextField(
              lable: '',
              hintTxt: 'Change Nickname',
              tIcon: Icons.person,
              tKeyBoardType: TextInputType.name,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              child: InternationalPhoneNumberInput(
                onInputChanged: (value) {},
              ),
            ),
            ElevatedIconButtonWidget(
                color: AppColor.moreLightGreenLogoColor,
                iconPah: AppIconsCls.privacyIcon,
                btnText: 'Privacy',
                onPress: () {}),
            ElevatedIconButtonWidget(
                color: AppColor.moreLightGreenLogoColor,
                iconPah: AppIconsCls.editHobby,
                btnText: 'edit hobby',
                onPress: () {
                  Navigator.of(context).pushNamed(hobbyRoute);
                }),
            ElevatedIconButtonWidget(
                color: AppColor.moreLightGreenLogoColor,
                iconPah: AppIconsCls.myBestIcon,
                btnText: 'edit Occupation',
                onPress: () {
                   Navigator.of(context).pushNamed(jobRoute);
                }),
            ElevatedIconButtonWidget(
                color: AppColor.moreLightGreenLogoColor,
                iconPah: AppIconsCls.myBestIcon,
                btnText: 'my best',
                onPress: () {
                   Navigator.of(context).pushNamed(myBestRoute);
                }),
            ElevatedIconButtonWidget(
                color: AppColor.moreLightGreenLogoColor,
                iconPah: AppIconsCls.editAvatar,
                btnText: 'edit avatar',
                onPress: () {
                     Navigator.of(context).pushNamed(editAvatarRoute);
                }),
            SizedBoxWidget(flex: 1, height: 40)
          ],
        ),
      ),
    ));
  }
}
