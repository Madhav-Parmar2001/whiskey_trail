import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ColorResource.dart';

class TextStyleResource {

  static TextStyle primaryTextStyle = TextStyle(
    fontSize: 27.0,
    color: ColorResource.white,
    fontWeight: FontWeight.w500,
  );

  static TextStyle secondaryTextStyle = TextStyle(
    fontSize: 18.0,
    color: ColorResource.white,
  );

  static TextStyle thirdTextStyle = TextStyle(
      fontSize: 18.0, color: ColorResource.white, fontWeight: FontWeight.bold);
  static TextStyle fourthTextStyle = TextStyle(
    fontSize: 16.0,
    color: ColorResource.white,
  );

  static TextStyle primaryButtonStyle = TextStyle(
      fontSize: 20.0, color: ColorResource.white, fontWeight: FontWeight.bold);

}

