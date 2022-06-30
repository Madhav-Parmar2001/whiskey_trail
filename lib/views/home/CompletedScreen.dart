import 'package:flutter/material.dart';
import '../../resources/ColorResource.dart';
import '../../resources/ImageResource.dart';
import '../../resources/StyleResources.dart';
import '../../resources/widgets/PrimaryBigButton.dart';

class CompletedScreen extends StatefulWidget {

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.primaryBodyBackgroundColor,

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        child: GestureDetector(
                          child: Icon(Icons.close,color: ColorResource.white,),
                          onTap: () {
                            print("Travel Itinerary Suggestions POP");
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(ImageResource.completed,height: 300,width: 300,),
                            Text("YOU HAVE SUCCEEDED",style: TextStyleResource.primaryTextStyle,),
                            Text("COMPLETED A TOTAL OF 14 STOPS",style: TextStyleResource.primaryTextStyle,),
                            Text("AND YOU WILL SPECIAL",style: TextStyleResource.primaryTextStyle,),
                            Text("BELT BUCKLE",style: TextStyleResource.primaryTextStyle,),
                          ],
                        ),
                    ),
                    const SizedBox(height: 30,),
                    Text("Give your feedback on the trails",style: TextStyleResource.primaryTextStyle,),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      maxLines: 7,
                      keyboardType: TextInputType.text,
                      cursorColor: ColorResource.white,
                      style: TextStyle(
                        color: ColorResource.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "Text Here",
                        hintStyle: TextStyle(
                          color: ColorResource.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: ColorResource.white)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: ColorResource.white)),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height:MediaQuery.of(context).size.height * 0.075,
                      child: PrimaryBigButton(
                          buttonText: "POST REVIEW",
                          backgroundcolor: ColorResource.primaryButtonColor,
                          onclick: (){
                            print("POST REVIEW");
                          }
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
