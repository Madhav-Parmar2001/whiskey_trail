import 'package:flutter/material.dart';

import '../ColorResource.dart';

class SecondaryCircleButton extends StatelessWidget {

  var image="";
  Color backcolor;
  GestureTapCallback onclick;
  SecondaryCircleButton({this.image,this.onclick,this.backcolor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: CircleAvatar(
          child: Image.asset(image),
          backgroundColor: ColorResource.primaryButtonColor,
          foregroundColor: ColorResource.white,
          maxRadius: 25,
        ),
        onTap: onclick,
    );
  }
}
