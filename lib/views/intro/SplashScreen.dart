import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ImageResource.dart';
import 'IntroScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  _Wait() async {
    await Future.delayed(const Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => IntroScreen()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _Wait();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(ImageResource.Splash_Screen,fit: BoxFit.cover,),
      ),
    );
  }
}
