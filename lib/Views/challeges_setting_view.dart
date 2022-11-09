import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';
import 'package:people_talk/widgets/buttons_widgets.dart';
import 'package:people_talk/widgets/challenges_widget.dart';

enum Challenger {
  friend,
  chellenger,
}

enum JuryYung { yes, no }

enum AudioTextEnum { yes, no }

class ChallegesSettingView extends StatefulWidget {
  const ChallegesSettingView({Key? key}) : super(key: key);

  @override
  State<ChallegesSettingView> createState() => _ChallegesSettingViewState();
}

class _ChallegesSettingViewState extends State<ChallegesSettingView> {
  var selectChellenger = Challenger.friend;
  var selectJuryYung = JuryYung.yes;
  var selectAudioText = AudioTextEnum.yes;
  int slideValue = 0;
  bool isBoxColor0 = true;
  bool isBoxColor1 = false;
  bool isBoxColor2 = false;
  bool isBoxColor3 = false;
  bool isBoxColor4 = false;
  bool isBoxColor5 = false;
  bool status0 = false;
  bool status1 = false;
  bool status2 = false;
  bool isBoxColor = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.symmetric(vertical: 25),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Challege Settings',
                  style: kProfileTextStyleHeding,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CheckBoxRadioButton(
                        selectChellenger: selectChellenger == Challenger.friend,
                        title: 'Friend',
                        onTap: () {
                          setState(() {
                            selectChellenger = Challenger.friend;
                          });
                        },
                      ),
                      CheckBoxRadioButton(
                        selectChellenger:
                            selectChellenger == Challenger.chellenger,
                        title: 'Chellenger',
                        onTap: () {
                          setState(() {
                            selectChellenger = Challenger.chellenger;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SliderTittleWidget(
                  tittle: 'Jury numbers   $slideValue',
                ),
                SliderWidget(
                    activeColor: AppColor.rulesContainerColor,
                    inActiveColor: AppColor.inActivestarColor,
                    sideText: false,
                    OnTap: (double newValue) {
                      setState(() {
                        slideValue = newValue.round();
                      });
                    },
                    sliderValue: slideValue,
                    text: slideValue.toString()),
                Align(
                  alignment: const Alignment(-0.65, 0),
                  child: Text(
                    'subject of discussion',
                    style: kProfileTextStyleBottomHeding,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CheckBoxRowWidget(
                  rowWidth: 150,
                  isCrownS: true,
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
                  rowWidth: 150,
                  isCrownS: true,
                  isCrownF: true,
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
                  rowWidth: 150,
                  isCrownS: true,
                  isCrownF: true,
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
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: AppColor.dateConatinerColor,
                  width: 240,
                  height: 170,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'jury young',
                        style: kProfileTextStyleBottomHeding,
                      ),
                      Row(
                        children: [
                          CheckBoxRadioCrown(
                            desicionJuryYung: selectJuryYung == JuryYung.yes,
                            onTap: () {
                              setState(() {
                                selectJuryYung = JuryYung.yes;
                              });
                            },
                            title: 'Yes',
                          ),
                          CheckBoxRadioCrown(
                            desicionJuryYung: selectJuryYung == JuryYung.no,
                            onTap: () {
                              setState(() {
                                selectJuryYung = JuryYung.no;
                              });
                            },
                            title: 'No',
                          ),
                        ],
                      ),
                      Text(
                        'Audio Text',
                        style: kProfileTextStyleBottomHeding,
                      ),
                      Row(
                        children: [
                          CheckBoxRadioCrown(
                            desicionJuryYung:
                                selectAudioText == AudioTextEnum.yes,
                            onTap: () {
                              setState(() {
                                selectAudioText = AudioTextEnum.yes;
                              });
                            },
                            title: 'Yes',
                          ),
                          CheckBoxRadioCrown(
                            desicionJuryYung:
                                selectAudioText == AudioTextEnum.no,
                            onTap: () {
                              setState(() {
                                selectAudioText = AudioTextEnum.no;
                              });
                            },
                            title: 'No',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SwitchContainerWidget(
                    title: 'Video Share',
                    onTap: (v) {
                      setState(() {
                        status0 = v;
                      });
                    },
                    status: status0),
                const SizedBox(
                  height: 20,
                ),
                SwitchContainerWidget(
                    title: 'Document Share',
                    onTap: (v) {
                      setState(() {
                        status1 = v;
                      });
                    },
                    status: status1),
                const SizedBox(
                  height: 20,
                ),
                SwitchContainerWidget(
                    title: 'Picture Share',
                    onTap: (v) {
                      setState(() {
                        status2 = v;
                      });
                    },
                    status: status2),
                const SizedBox(
                  height: 20,
                ),
                CheckBoxWidget(
                  width: 30,
                  height: 30,
                  widthbtn: 300,
                  isBoxColor: isBoxColor,
                  onTap: () {
                    setState(() {
                      if (isBoxColor == true) {
                        isBoxColor = false;
                      } else {
                        isBoxColor = true;
                      }
                    });
                  },
                  title: 'I am responsible for the shared documents',
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButtonWidget(
                    btnHeight: 40,
                    btnWidth: 200,
                    btnText: 'PROCEED',
                    onClickBtn: () {},
                    btnColor: AppColor.lightGreenLogoColor)
              ],
            )),
      ),
    ));
  }
}


