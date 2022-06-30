import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ImageResource.dart';

import '../../../resources/ColorResource.dart';
import '../../../resources/StyleResources.dart';
import '../../../resources/widgets/SecondaryBigButton.dart';
import 'CompletedMemberScreen.dart';
import 'TravelInformationScreen.dart';
import 'TravelItinerarySuggestionsScreen.dart';

class Ketchican22 extends StatefulWidget {
  @override
  State<Ketchican22> createState() => _Ketchican22State();
}

class _Ketchican22State extends State<Ketchican22> {
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
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 330.0,
                width: double.infinity,
                child: Carousel(
                  dotSpacing: 15.0,
                  dotSize: 6.0,
                  dotIncreasedColor: ColorResource.red,
                  dotBgColor: Colors.transparent,
                  dotVerticalPadding: 30,
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
            ),
            Positioned(
              top: 0,
              left: 0,
              width: 350,
              child: ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: ColorResource.white,
                    size: 25,
                  ),
                  onPressed: () {
                    print("Ketchican Page POP");
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.65,
              maxChildSize: 1.00,
              minChildSize: 0.65,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: CustomScrollViewContent(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomScrollViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorResource.primaryBodyBackgroundColor,
      // color: Colors.amber,
      elevation: 5.0,
      clipBehavior: Clip.none,
      borderOnForeground: true,
      semanticContainer: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        child: CustomInnerContent(),
      ),
    );
  }
}

class CustomInnerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 25),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorResource.primaryBodyBackgroundColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Row(
                          children: [
                            Text(
                              "1. Ketchican",
                              style: TextStyleResource.secondaryTextStyle,
                            ),
                            const SizedBox(
                              width: 160,
                            ),
                            Text(
                              "Audiotrack",
                              style: TextStyleResource.secondaryTextStyle,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              child: IconButton(
                                icon: Icon(
                                  Icons.volume_up,
                                  color: ColorResource.primaryButtonColor,
                                ), onPressed: () {},
                              ),
                              backgroundColor: ColorResource.white,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Travel from washington State to Ketchican,",
                        style: TextStyleResource.fourthTextStyle,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Ak(850 miles)",
                        style: TextStyleResource.fourthTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Landmark Details",
                        style: TextStyleResource.secondaryTextStyle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Lorem ipsum dotor sit amet, consetetur sadipscing,"
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
                        style: TextStyleResource.fourthTextStyle,
                        textAlign: TextAlign.left,
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: MediaQuery.of(context).size.height * 0.055,
                        child: SecondaryBigButton(
                            buttonText: "TRAVEL INFORMATION",
                            backgroundcolor: ColorResource.primaryButtonColor,
                            onclick: () {
                              print("TRAVEL INFORMATION");
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      TravelInformationScreen()));
                            }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: MediaQuery.of(context).size.height * 0.055,
                        child: SecondaryBigButton(
                            buttonText: "TRAVEL ITINERARY SUGGESTIONS",
                            backgroundcolor: ColorResource.primaryButtonColor,
                            onclick: () {
                              print("TRAVEL ITINERARY SUGGESTIONS");
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      TravelItinerarySuggestionsScreen()));
                            }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: MediaQuery.of(context).size.height * 0.055,
                        child: SecondaryBigButton(
                            buttonText: "COMPLETED MEMBERS",
                            backgroundcolor: ColorResource.primaryButtonColor,
                            onclick: () {
                              print("COMPLETED MEMBERS");
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      CompletedMemberScreen()));
                            }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              alignment: Alignment.center,
                              height:
                                  MediaQuery.of(context).size.height * 0.055,
                              width: double.infinity,
                              child: Text(
                                "UPLOAD PICTURES",
                                style: TextStyleResource.secondaryTextStyle,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: ColorResource.white),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          onTap: () {
                            print("UPLOAD PICTURES");
                          }),
                      const SizedBox(
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
