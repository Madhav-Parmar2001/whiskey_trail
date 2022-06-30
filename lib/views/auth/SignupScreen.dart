import 'package:flutter/material.dart';
import '../../resources/ColorResource.dart';
import '../../resources/ImageResource.dart';
import '../../resources/StyleResources.dart';
import '../../resources/widgets/PrimaryCircleButton.dart';
import '../../resources/widgets/PrimaryRightTop_Corner.dart';
import '../../resources/widgets/PrimaryTextFormField.dart';
import '../../resources/widgets/SecondaryCircleButton.dart';
import 'LoginScreen.dart';
import 'VerificationScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var checkbox1 = false;

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
                            print("SignUp POP");
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Sign Up",
                            style: TextStyleResource.primaryTextStyle,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Enter your email",
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
                        height: 20,
                      ),
                      PrimaryTextFormField(
                        keybord: TextInputType.text,
                        hintword: "Full Name",
                        ispassword: false,
                        onclick: (){},
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      PrimaryTextFormField(
                        keybord: TextInputType.emailAddress,
                        hintword: "E-mail address",
                        ispassword: false,
                        onclick: (){},
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      PrimaryTextFormField(
                        keybord: TextInputType.visiblePassword,
                        hintword: "Password",
                        ispassword: true,
                        onclick: (){},
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      PrimaryTextFormField(
                        keybord: TextInputType.visiblePassword,
                        hintword: "Confirm Password",
                        ispassword: true,
                        onclick: (){},
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: ColorResource.red,
                            checkColor: ColorResource.white,
                            value: checkbox1,
                            onChanged: (value){
                              setState(() {
                                checkbox1 = value;
                              });
                            },
                          ),
                          Text("I agree with the ",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: ColorResource.white,
                            ),),
                          TextButton(
                            child: Text("customer terms of service",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: ColorResource.red,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                              ),
                            ),

                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sign Up",
                            style: TextStyleResource.primaryTextStyle,
                          ),

                          PrimaryCircleButton(
                            onclick: () {
                            print("SignUp Madhav");
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => VerificationScreen()));
                            },),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: Text(
                            "OR",
                            style: TextStyleResource.primaryTextStyle,
                          )),

                      const SizedBox(
                        height: 20,
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
                            Text("Already have an account? ",style: TextStyleResource.secondaryTextStyle,),
                            TextButton(
                              child: Text("Log in",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color:ColorResource.red,
                                  wordSpacing: 3.0,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                ),
                              ),
                              onPressed: (){
                                print("Log in");
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
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
