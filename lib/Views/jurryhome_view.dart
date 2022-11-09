import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/challenges_widget.dart';
import 'package:people_talk/widgets/common_widget.dart';

const String sampleText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Rhoncus urna neque viverra justo nec ultrices dui.';

class JurryHomeView extends StatefulWidget {
  const JurryHomeView({Key? key}) : super(key: key);

  @override
  State<JurryHomeView> createState() => _JurryHomeViewState();
}

class _JurryHomeViewState extends State<JurryHomeView> {
  int slideValue = 0;
  bool isBoxColor0 = true;
  bool isBoxColor1 = false;
  bool isBoxColor2 = false;
  bool isBoxColor3 = false;
  bool isBoxColor4 = false;
  bool isBoxColor5 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              const ImageRedBarIconWidget(),
              Text(
                'Description A',
                style: kTextStyleHeding,
              ),
              MessageBoxWidget(
                text: sampleText,
              ),
              Text(
                'Description B',
                style: kTextStyleHeding,
              ),
              MessageBoxWidget(
                text: sampleText,
                isDesB: true,
              ),
              ElevatedButtonWithRightArrow(
                onPress: () {},
                btnText: 'Challenges',
                iconPah: AppIconsCls.victoryHandIcon,
              ),
              const SizedBox(
                height: 20,
              ),
              SliderTittleWidget(
                tittle: 'Jury numbers',
              ),
              SliderWidget(
                  OnTap: (double newValue) {
                    setState(() {
                      slideValue = newValue.round();
                    });
                  },
                  sliderValue: slideValue,
                  text: slideValue.toString()),
              SliderTittleWidget(
                tittle: 'End In',
              ),
              SliderWidget(
                  OnTap: (double newValue) {
                    setState(() {
                      slideValue = newValue.round();
                    });
                  },
                  sliderValue: slideValue,
                  text: '4 hr'),
              SliderTittleWidget(
                tittle: 'Start In',
              ),
              SliderWidget(
                  OnTap: (double newValue) {
                    setState(() {
                      slideValue = newValue.round();
                    });
                  },
                  sliderValue: slideValue,
                  text: '-- hr'),
              const SizedBox(
                height: 10,
              ),
              SliderTittleWidget(tittle: 'Subject Of discussion'),
              const SizedBox(
                height: 20,
              ),
              CheckBoxRowWidget(
                isBoxColorF: isBoxColor0,
                isBoxColorS: isBoxColor1,
                onTapF: () {
                  setState(() {
                    if (isBoxColor0 == true) {
                      isBoxColor0 = false;
                    } else {
                      isBoxColor0 = true;
                    }
                  });
                },
                titleF: 'Not Specified',
                titleS: 'Love',
                onTapS: () {
                  setState(() {
                    if (isBoxColor1 == true) {
                      isBoxColor1 = false;
                    } else {
                      isBoxColor1 = true;
                    }
                  });
                },
              ),
              CheckBoxRowWidget(
                isBoxColorF: isBoxColor2,
                isBoxColorS: isBoxColor3,
                onTapF: () {
                  setState(() {
                    if (isBoxColor2 == true) {
                      isBoxColor2 = false;
                    } else {
                      isBoxColor2 = true;
                    }
                  });
                },
                titleF: 'FriendShip',
                titleS: 'Family',
                onTapS: () {
                  setState(() {
                    if (isBoxColor3 == true) {
                      isBoxColor3 = false;
                    } else {
                      isBoxColor3 = true;
                    }
                  });
                },
              ),
              CheckBoxRowWidget(
                isBoxColorF: isBoxColor4,
                isBoxColorS: isBoxColor5,
                onTapF: () {
                  setState(() {
                    if (isBoxColor4 == true) {
                      isBoxColor4 = false;
                    } else {
                      isBoxColor4 = true;
                    }
                  });
                },
                titleF: 'Business',
                titleS: 'Team Work',
                onTapS: () {
                  setState(() {
                    if (isBoxColor5 == true) {
                      isBoxColor5 = false;
                    } else {
                      isBoxColor5 = true;
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
