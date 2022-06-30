import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ColorResource.dart';

class PrimaryCircleButton extends StatelessWidget {
  GestureTapCallback onclick;
  PrimaryCircleButton({
    this.onclick,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(45)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                ColorResource.gradientred1,
                ColorResource.gradientred1,
                ColorResource.gradientred2,
                ColorResource.gradientred2,
              ]
          ),
        ),
        // child: Icon(
        //   Icons.arrow_forward_outlined,
        //   color: ColorResource.white,
        //   size: 90,
        // ),

        child: CircleAvatar(
          child: const Icon(
            Icons.arrow_forward_outlined,
            size: 50,
          ),
          backgroundColor: ColorResource.primaryButtonColor,
          foregroundColor: ColorResource.white,
          maxRadius: 45,
        ),

      ),
      onTap: onclick,
    );
  }
}
