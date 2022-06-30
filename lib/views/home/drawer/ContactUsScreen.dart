import 'package:flutter/material.dart';
import '../../../resources/ColorResource.dart';
import '../../../resources/StyleResources.dart';
import '../../../resources/widgets/PrimaryBigButton.dart';
import '../../../resources/widgets/SecondaryCircleButton.dart';
import '../DrawerScreen.dart';

class ContactUsScreen extends StatefulWidget {
  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.primaryBodyBackgroundColor,

      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        child: Builder(builder: (context) {
                          return GestureDetector(
                            child: Builder(
                                builder: (context) {
                                  return GestureDetector(
                                    child: Icon(Icons.short_text,color:ColorResource.white,size: 50,),
                                    onTap: () {
                                      print("Drawer Open");
                                      Scaffold.of(context).openDrawer();
                                    },
                                  );
                                }
                            ),
                          );
                        }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Text(
                        "Contact Us",
                        style: TextStyleResource.primaryTextStyle,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Container(
                // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor:ColorResource.white,
                        style: TextStyle(
                          color:ColorResource.white,
                        ),
                        decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(
                            color:ColorResource.white,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: BorderSide(color:ColorResource.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: BorderSide(color:ColorResource.white)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor:ColorResource.white,
                        style: TextStyle(
                          color:ColorResource.white,
                        ),
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          hintStyle: TextStyle(
                            color:ColorResource.white,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: BorderSide(color:ColorResource.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: BorderSide(color:ColorResource.white)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor:ColorResource.white,
                        style: TextStyle(
                          color:ColorResource.white,
                        ),
                        decoration: InputDecoration(
                          hintText: "Email ID",
                          hintStyle: TextStyle(
                            color:ColorResource.white,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: BorderSide(color:ColorResource.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: BorderSide(color:ColorResource.white)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        maxLines: 7,
                        keyboardType: TextInputType.text,
                        cursorColor:ColorResource.white,
                        style: TextStyle(
                          color:ColorResource.white,
                        ),
                        decoration: InputDecoration(
                          hintText: "Write Message...",
                          hintStyle: TextStyle(
                            color:ColorResource.white,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color:ColorResource.white)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color:ColorResource.white)),
                        ),
                      ),

                      const SizedBox(height: 30,),
                      Text("Email us: info@alaskawhiskeytrail.com",style: TextStyleResource.secondaryTextStyle,),

                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SecondaryCircleButton(
                              image: "Assets/images/facebook.png",
                              onclick: () {
                                print("facebook");
                              }),
                          const SizedBox(
                            width: 10,
                          ),
                          SecondaryCircleButton(
                              image: "Assets/images/youtube.png",
                              onclick: () {
                                print("Youtube");
                              }),
                          const SizedBox(
                            width: 10,
                          ),
                          SecondaryCircleButton(
                              image: "Assets/images/instagram.png",
                              onclick: () {
                                print("Instagram");
                              }),
                          const SizedBox(
                            width: 10,
                          ),
                          SecondaryCircleButton(
                              image: "Assets/images/twitter.png",
                              onclick: () {
                                print("twitter");
                              }),
                          const SizedBox(
                            width: 10,
                          ),
                          SecondaryCircleButton(
                              image: "Assets/images/linkdin.png",
                              onclick: () {
                                print("Linkdin");
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height:MediaQuery.of(context).size.height * 0.075,
                  child: PrimaryBigButton(
                      buttonText: "Send",
                      backgroundcolor: ColorResource.primaryButtonColor,
                      onclick: (){
                        print("Send");
                      }
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
