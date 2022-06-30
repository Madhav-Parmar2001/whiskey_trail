import 'package:flutter/material.dart';
import '../../../resources/ColorResource.dart';
import '../../../resources/StyleResources.dart';
import '../../../resources/widgets/PrimaryBigButton.dart';
import '../DrawerScreen.dart';

class NewsLetterScreen extends StatefulWidget {
  @override
  State<NewsLetterScreen> createState() => _NewsLetterScreenState();
}

class _NewsLetterScreenState extends State<NewsLetterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.primaryBodyBackgroundColor,

      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: ListTile(
                  leading: Builder(
                      builder: (context) {
                        return GestureDetector(
                          child: Icon(Icons.short_text,color: ColorResource.white,size: 40,),
                          onTap: () {
                            print("Drawer Open");
                            Scaffold.of(context).openDrawer();
                          },
                        );
                      }
                  ),

                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,0,0),
                    child: Text("Newsletter",style: TextStyleResource.primaryTextStyle,),
                  ),
                ),


                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     Padding(
                //       padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                //       child: Container(
                //         child: Builder(builder: (context) {
                //           return GestureDetector(
                //             child: Builder(
                //                 builder: (context) {
                //                   return GestureDetector(
                //                     child: Icon(Icons.short_text,color: ColorResource.white,size: 50,),
                //                     onTap: () {
                //                       print("Drawer Open");
                //                       Scaffold.of(context).openDrawer();
                //                     },
                //                   );
                //                 }
                //             ),
                //           );
                //         }),
                //       ),
                //     ),
                //     Padding(
                //       padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                //       child: Text(
                //         "Newsletter",
                //         style: TextStyleResource.primaryTextStyle,
                //       ),
                //     ),
                //   ],
                // ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      "SUBSCRIBE TO OUR ADI NEWSLETTER",
                      style: TextStyleResource.primaryTextStyle,
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Signup for our weekly newletter  to get  the latest news, "
                          "updates and amazing offers delivered  directly in your inbox.",
                      style: TextStyleResource.secondaryTextStyle,
                      textAlign: TextAlign.left,
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      cursorColor: ColorResource.white,
                      style: TextStyle(
                        color: ColorResource.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "Enter your email",
                        hintStyle: TextStyle(
                          color: ColorResource.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100.0),
                            borderSide: BorderSide(color: ColorResource.white,)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100.0),
                            borderSide: BorderSide(color: ColorResource.white,)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 370,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.075,
                  child: PrimaryBigButton(
                      buttonText: "SUBSCRIBE",
                      backgroundcolor: ColorResource.primaryButtonColor,
                      onclick: () {
                        print("SUBSCRIBE");
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
