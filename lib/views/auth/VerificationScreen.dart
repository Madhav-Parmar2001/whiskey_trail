import 'package:flutter/material.dart';
import '../../resources/ColorResource.dart';
import '../../resources/StyleResources.dart';
import '../../resources/widgets/PrimaryCircleButton.dart';
import '../../resources/widgets/PrimaryRightTop_Corner.dart';
import 'RegistrationFeeScreen.dart';

class VerificationScreen extends StatefulWidget {

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  double _height = 50;
  double _width = 45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.primaryBodyBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                          top: 30,
                          right: 0,
                          bottom: 0,
                        ),
                        child: GestureDetector(
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: ColorResource.white,
                          ),
                          onTap: () {
                            print("Verification POP");
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Check your email"
                            "\nfor a code",
                            style: TextStyleResource.primaryTextStyle,
                          )),
                    ],
                  ),
                  PrimaryRightTop_Corner(),
                ],
              ),
              Container(
                // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "We've sent a 6 digit code to your email. The code expires shortly so please enter it soon.",
                        style: TextStyleResource.secondaryTextStyle,
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            height: _height,
                            width: _width,
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.text,
                              cursorColor: ColorResource.white,
                              style: TextStyle(
                                color: ColorResource.white,
                              ),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  color: ColorResource.white,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: ColorResource.white,)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: ColorResource.white,)),
                              ),
                            ),
                            ),

                          Container(
                            margin: const EdgeInsets.all(5),
                            height: _height,
                            width: _width,
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.text,
                              cursorColor: ColorResource.white,
                              style: TextStyle(
                                color: ColorResource.white,
                              ),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  color: ColorResource.white,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: ColorResource.white,)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: ColorResource.white,)),
                              ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.all(5),
                            height: _height,
                            width: _width,
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.text,
                              cursorColor: ColorResource.white,
                              style: TextStyle(
                                color: ColorResource.white,
                              ),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  color: ColorResource.white,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: ColorResource.white,)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: ColorResource.white,)),
                              ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.all(5),
                            height: _height,
                            width: _width,
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.text,
                              cursorColor: ColorResource.white,
                              style: TextStyle(
                                color: ColorResource.white,
                              ),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  color: ColorResource.white,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: ColorResource.white,)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: ColorResource.white,)),
                              ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.all(5),
                            height: _height,
                            width: _width,
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.text,
                              cursorColor: ColorResource.white,
                              style: TextStyle(
                                color: ColorResource.white,
                              ),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  color: ColorResource.white,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: ColorResource.white,)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: ColorResource.white,)),
                              ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.all(5),
                            height: _height,
                            width: _width,
                            child: TextField(
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.text,
                              cursorColor: ColorResource.white,
                              style: TextStyle(
                                color: ColorResource.white,
                              ),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  color: ColorResource.white,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: ColorResource.white,)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: ColorResource.white,)),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Don't received the code? ",style: TextStyleResource.secondaryTextStyle,),
                            TextButton(
                              child: Text("Resend the code",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: ColorResource.red,
                                  wordSpacing: 3.0,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                ),
                              ),
                              onPressed: (){
                                print("Resend the code");
                              },
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 250,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Verify",
                            style: TextStyleResource.primaryTextStyle,
                          ),
                          PrimaryCircleButton(
                            onclick: () {
                              print("Verification Madhav");
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegistrationFeeScreen()));
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

