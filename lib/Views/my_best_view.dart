import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/common_widget.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';

class MyBestView extends StatefulWidget {
  const MyBestView({Key? key}) : super(key: key);

  @override
  State<MyBestView> createState() => _MyBestViewState();
}

class _MyBestViewState extends State<MyBestView> {
  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

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
      body: Column(
        children: [
          Text(
            'Select Your Best',
            style: kTextStyleHeding,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 2 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: 20,
                shrinkWrap: true,
                itemBuilder: (BuildContext ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _onSelected(index);
                      });
                    },
                    child: AvatarCardWidget(
                      selectedIndex: _selectedIndex,
                      listIndex: index,
                    ),
                  );
                }),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          ElevatedButtonWidget(
              btnText: 'Confirm',
              onClickBtn: () {
                Navigator.pop(context);
              },
              btnColor: AppColor.lightGreenLogoColor)
        ],
      ),
    );
  }
}
