import 'package:flutter/material.dart';
import '../../../resources/ColorResource.dart';
import '../../../resources/StyleResources.dart';

class TravelItinerarySuggestionsScreen extends StatefulWidget {

  @override
  State<TravelItinerarySuggestionsScreen> createState() => _TravelItinerarySuggestionsScreenState();
}

class _TravelItinerarySuggestionsScreenState extends State<TravelItinerarySuggestionsScreen> {
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
                      child: GestureDetector(
                        child: Icon(Icons.arrow_back_ios_outlined,color: ColorResource.white,),
                        onTap: () {
                          print("Travel Itinerary Suggestions POP");
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Text(
                        "Travel Itinerary Suggestions",
                        style: TextStyleResource.primaryTextStyle,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30,),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
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
                      style: TextStyleResource.secondaryTextStyle,textAlign: TextAlign.left,),

                    const SizedBox(
                      height: 10,
                    ),
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
                      style: TextStyleResource.secondaryTextStyle,textAlign: TextAlign.left,),

                    const SizedBox(
                      height: 10,
                    ),
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
                      style: TextStyleResource.secondaryTextStyle,textAlign: TextAlign.left,),


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
