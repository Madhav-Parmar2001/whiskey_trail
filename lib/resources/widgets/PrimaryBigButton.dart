


import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ColorResource.dart';
import 'package:whiskey_trail/resources/StyleResources.dart';

class PrimaryBigButton extends StatelessWidget {

  var buttonText="";
  Color backgroundcolor;
  GestureTapCallback onclick;
  PrimaryBigButton({this.buttonText,this.onclick,this.backgroundcolor,});

  @override
  Widget build(BuildContext context) {
        return GestureDetector(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.08,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                ColorResource.gradientred1,
                ColorResource.gradientred1,
                ColorResource.gradientred2,
                ColorResource.gradientred2,
              ]
            ),
          ),
          child: Text(
            buttonText,
            style: TextStyleResource.primaryButtonStyle,
          ),
        ),
        onTap: onclick
    );
  }

}

// backgroundcolor: Color(0xFFc25751), // top
// backgroundcolor: Color(0xFFa9453f), // bottom
