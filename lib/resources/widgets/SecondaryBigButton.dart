
import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/StyleResources.dart';

class SecondaryBigButton extends StatelessWidget {

  var buttonText="";
  Color backgroundcolor;
  GestureTapCallback onclick;
  SecondaryBigButton({this.buttonText,this.onclick,this.backgroundcolor,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.08,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: backgroundcolor,
          ),
          child: Text(
            buttonText,
            style: TextStyleResource.secondaryTextStyle,
          ),
        ),
        onTap: onclick
    );
  }

}


