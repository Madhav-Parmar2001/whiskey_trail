import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ColorResource.dart';
import 'package:whiskey_trail/resources/StyleResources.dart';

class PrimarySliderCard extends StatelessWidget {

  var imagename="";
  var textname="";
  GestureTapCallback onclick;
  PrimarySliderCard({this.imagename,this.onclick,this.textname});

  @override
  Widget build(BuildContext context) {
    return  Badge(
      position: BadgePosition.topEnd(top: 0, end: 2),
      badgeContent: Text(textname,style: TextStyleResource.secondaryTextStyle,),
      elevation: 2,
      badgeColor: ColorResource.primaryButtonColor,
      padding: const EdgeInsets.all(12),
      child: GestureDetector(
        child: Container(
          width: 70,
          margin: const EdgeInsets.fromLTRB(10,10,10,0,),
          decoration: BoxDecoration(
            border: Border.all(color: ColorResource.white,width: 2,),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              image: AssetImage(imagename,),fit: BoxFit.fill,
            ),
          ),
        ),
        onTap: onclick,
      ),
    );
  }
}

