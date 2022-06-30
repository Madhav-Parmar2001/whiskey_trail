import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ImageResource.dart';
import '../../resources/ColorResource.dart';
import '../../resources/StyleResources.dart';
import '../../resources/widgets/PrimaryCircleButton.dart';
import '../../resources/widgets/PrimaryRightTop_Corner.dart';
import '../../resources/widgets/PrimaryTextFormField.dart';
import '../../resources/widgets/SecondaryCircleButton.dart';
import 'SignupScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                        margin: const EdgeInsets.only(left: 20, top: 30,right: 0,bottom: 0,),
                        child: GestureDetector(
                          child: Icon(Icons.arrow_back_ios_outlined,color: ColorResource.white,),
                          onTap: () {
                            print("Login POP");
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
                            "Log In",
                            style: TextStyleResource.primaryTextStyle,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Log in to continue",
                          style: TextStyleResource.secondaryTextStyle,
                        ),
                      ),
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
                        height: 50,
                      ),
                      PrimaryTextFormField(
                        keybord: TextInputType.emailAddress,
                        hintword: "E-mail address",
                        ispassword: false,
                        onclick: (){},
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      PrimaryTextFormField(
                        keybord: TextInputType.visiblePassword,
                        hintword: "Password",
                        ispassword: true,
                        onclick: (){},
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      Text(
                        "Forgot Your Password ? ",
                        style: TextStyleResource.secondaryTextStyle,
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Log In",
                            style: TextStyleResource.primaryTextStyle,
                          ),
                          PrimaryCircleButton(
                            onclick: () {
                              print("Login Madhav");
                            },
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: Text(
                            "OR",
                            style: TextStyleResource.primaryTextStyle,
                          )),

                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(
                              width: 30,
                            ),
                            SecondaryCircleButton(
                                image: ImageResource.google,
                                onclick: () {
                                  print("google");
                                }),
                            SecondaryCircleButton(
                                image: ImageResource.twitter,
                                onclick: () {
                                  print("twitter");
                                }),
                            SecondaryCircleButton(
                                image: ImageResource.facebook,
                                onclick: () {
                                  print("facebook");
                                }),

                            const SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 30,
                      ),

                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have a account? ",style: TextStyleResource.secondaryTextStyle,),
                            TextButton(
                              child: Text("Sign Up here.",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: ColorResource.red,
                                  wordSpacing: 3.0,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                ),
                              ),
                              onPressed: (){
                                print("Sign Up Madhav");
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
                              },
                            ),
                          ],
                        ),
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
