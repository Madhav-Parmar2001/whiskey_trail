import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ColorResource.dart';
import 'package:whiskey_trail/resources/ImageResource.dart';
import '../../../resources/StyleResources.dart';
import '../../../resources/widgets/SecondaryBigButton.dart';
import 'CompletedMemberScreen.dart';
import 'TravelItinerarySuggestionsScreen.dart';

class KetchicanScreen extends StatefulWidget {

  @override
  State<KetchicanScreen> createState() => _KetchicanScreenState();
}

class _KetchicanScreenState extends State<KetchicanScreen> {

  final List<String> images = [
    ImageResource.ketchican,
    ImageResource.Map,
    ImageResource.ketchican,
    ImageResource.Map,
    ImageResource.ketchican,
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.primaryBodyBackgroundColor,

      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200.0,
              width: double.infinity,
              child: Carousel(
                dotSpacing: 15.0,
                dotSize: 6.0,
                dotIncreasedColor: ColorResource.red,
                dotBgColor: Colors.transparent,
                indicatorBgPadding: 10.0,
                dotPosition: DotPosition.bottomCenter,
                autoplay: false,
                images: images
                    .map((item) => Container(
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                  ),
                ))
                    .toList(),
              ),
            ),

            // Container(
            //   child: Column(
            //     children: [
            //       Image.asset("Assets/images/Ketchican.png",fit: BoxFit.cover,),
            //     ],
            //   ),
            // ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10,0,10,10),
                child: Container(
                  color: ColorResource.primaryBodyBackgroundColor,
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,10,0,0),
                          child: Row(
                            children: [
                              Text("1. Ketchican",style: TextStyleResource.secondaryTextStyle,),
                              const SizedBox(
                                width: 160,
                              ),
                              Text("Audiotrack",style: TextStyleResource.secondaryTextStyle,),
                              const SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                child: IconButton(
                                  icon: Icon(Icons.volume_up,color: ColorResource.primaryButtonColor,), onPressed: () {},
                                ),
                                backgroundColor: ColorResource.white,
                              ),
                            ],
                          ),
                        ),

                        Text("Travel from washington State to Ketchican,",style: TextStyleResource.thirdTextStyle,),
                        const SizedBox(height: 5,),
                        Text("Ak(850 miles)",style: TextStyleResource.thirdTextStyle,),
                        const SizedBox(height: 20,),
                        Text("Landmark Details",style: TextStyleResource.secondaryTextStyle,),
                        const SizedBox(height: 20,),
                        Text("Lorem ipsum dotor sit amet, consetetur sadipscing,"
                            " elitr sed diam nonumy eirmod tempor inviduct ut"
                            " labore et dolore magna aliquyam erat, sed diam."
                            "Lorem ipsum dotor sit amet, consetetur sadipscing,"
                            " elitr sed diam nonumy eirmod tempor inviduct ut"
                            " labore et dolore magna aliquyam erat, sed diam."
                            "Lorem ipsum dotor sit amet, consetetur sadipscing,"
                            " elitr sed diam nonumy eirmod tempor inviduct ut"
                            " labore et dolore magna aliquyam erat, sed diam."
                            "Lorem ipsum dotor sit amet, consetetur sadipscing,"
                            " elitr sed diam nonumy eirmod tempor inviduct ut"
                            " labore et dolore magna aliquyam erat, sed diam.",
                          style: TextStyleResource.thirdTextStyle,textAlign: TextAlign.left,),

                        const SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: MediaQuery.of(context).size.height * 0.055,
                          child: SecondaryBigButton(
                              buttonText: "TRAVEL INFORMATION",
                              backgroundcolor: ColorResource.primaryButtonColor,
                              onclick: () {
                                print("TRAVEL INFORMATION");
                              }),
                        ),

                        const SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: MediaQuery.of(context).size.height * 0.055,
                          child: SecondaryBigButton(
                              buttonText: "TRAVEL ITINERARY SUGGESTIONS",
                              backgroundcolor: ColorResource.primaryButtonColor,
                              onclick: () {
                                print("TRAVEL ITINERARY SUGGESTIONS");
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TravelItinerarySuggestionsScreen()));
                              }),
                        ),

                        const SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: MediaQuery.of(context).size.height * 0.055,
                          child: SecondaryBigButton(
                              buttonText: "COMPLETED MEMBERS",
                              backgroundcolor: ColorResource.primaryButtonColor,
                              onclick: () {
                                print("COMPLETED MEMBERS");
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CompletedMemberScreen()));
                              }),
                        ),

                        const SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: MediaQuery.of(context).size.height * 0.055,
                          child: SecondaryBigButton(
                              buttonText: "TRACK LOCATION",
                              backgroundcolor: ColorResource.primaryButtonColor,
                              onclick: () {
                                print("TRACK LOCATION");
                              }),
                        ),

                        const SizedBox(height: 20,),
                        GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                alignment: Alignment.center,
                                height:MediaQuery.of(context).size.height * 0.055,
                                width: double.infinity,
                                child: Text("UPLOAD PICTURES",style: TextStyleResource.secondaryTextStyle,),
                                decoration: BoxDecoration(
                                  border: Border.all(color: ColorResource.white,),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                            onTap: (){
                              print("UPLOAD PICTURES");
                            }
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

