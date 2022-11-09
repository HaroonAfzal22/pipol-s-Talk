import 'package:flutter/material.dart';
import 'package:people_talk/Constants/app_constants.dart';
import 'package:people_talk/Utilities/text_style.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(77.0),
          child: SafeArea(
            child: Card(
              elevation: 3,
              child: Container(
                height: 77,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: AppColor.grayLogoColor,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: AppColor.grayLogoColor),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.green),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Chellenge Tittle',
                      style: kChatTittleTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
           
          ),
        
    );
  }
}
