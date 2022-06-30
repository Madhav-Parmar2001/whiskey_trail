import 'package:flutter/material.dart';

import '../ColorResource.dart';

class PrimaryTextFormField extends StatelessWidget {

  var hintword="";
  GestureTapCallback onclick;
  TextInputType keybord;
  bool ispassword;
  PrimaryTextFormField({this.hintword,this.onclick,this.keybord,this.ispassword});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keybord,
      obscureText: ispassword,
      cursorColor: ColorResource.white,
      style: TextStyle(
        color: ColorResource.white,
      ),
      decoration: InputDecoration(
        hintText: hintword,
        hintStyle: TextStyle(
          color: ColorResource.white,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
            borderSide: BorderSide(color: ColorResource.white)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
            borderSide: BorderSide(color: ColorResource.white)),
      ),
      onTap: onclick,
    );
  }
}
