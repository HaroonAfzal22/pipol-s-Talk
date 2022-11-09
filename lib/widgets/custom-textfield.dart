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

// Jasim's TF
class customTextFormfield extends StatelessWidget {
  final hintext,
      keyboardtype,
      controller,
      obsecuretext,
      prefixicon,
      suffixicon,
      validator,
      onEditingComplete,
      contentPading,
      errorStyle,
      hintstyle,
      onchange,
      scrollcontroller;
  final dynamic? textalign;

  const customTextFormfield(
      {Key? key,
      required this.hintext,
      this.keyboardtype,
      this.controller,
      this.obsecuretext,
      this.prefixicon,
      this.suffixicon,
      this.validator,
      this.onEditingComplete,
      this.contentPading,
      this.errorStyle,
      this.hintstyle,
      this.textalign,
      this.onchange,
      this.scrollcontroller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      scrollController: scrollcontroller,
      maxLines: 10,
      onChanged: onchange,
      textAlign: textalign == null ? TextAlign.start : textalign,
      onEditingComplete: onEditingComplete,
      obscureText: obsecuretext,
      controller: controller,
      keyboardType: keyboardtype,
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        errorStyle: const TextStyle(
          fontSize: 15.0,
        ),
        prefixIcon: prefixicon,
        contentPadding: contentPading,
        filled: true,
        fillColor: AppColor.dateConatinerColor,
        hintText: hintext,
        hintStyle: hintstyle,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
