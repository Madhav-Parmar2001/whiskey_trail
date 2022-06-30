import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ImageResource.dart';

class PrimaryRightTop_Corner extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Image.asset(ImageResource.RightTop_Corner,height: 150,width: 150,fit: BoxFit.cover,);
  }
}