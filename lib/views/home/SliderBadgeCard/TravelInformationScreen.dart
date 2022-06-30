import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ImageResource.dart';

import '../../../resources/ColorResource.dart';
import '../../../resources/StyleResources.dart';

class TravelInformationScreen extends StatefulWidget {
  @override
  State<TravelInformationScreen> createState() => _TravelInformationScreenState();
}

class _TravelInformationScreenState extends State<TravelInformationScreen> {
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
                    Icons.arrow_back_ios_outlined,
                    color: ColorResource.white,
                    size: 25,
                  ),
                  onPressed: () {
                    print("Travel Information POP");
                    Navigator.of(context).pop();
                  },
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text(
                    "Travel Information",
                    style: TextStyleResource.primaryTextStyle,
                  ),
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
      minimum: const EdgeInsets.only(top: 30),
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
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Column(
                            children: [
                              TabBar(
                                indicatorWeight: 2,
                                automaticIndicatorColorAdjustment: true,
                                labelPadding: const EdgeInsets.only(bottom: 10),
                                indicatorColor: ColorResource.red,
                                labelColor: ColorResource.red,
                                unselectedLabelColor: ColorResource.white,
                                indicatorSize: TabBarIndicatorSize.tab,
                                tabs: const [
                                  Text("Travel Option",
                                      style: TextStyle(fontSize: 16)),
                                  Text(
                                    "Accomodations",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text("Car Rental",
                                      style: TextStyle(fontSize: 16)),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height,
                                child: TabBarView(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Travel Options",
                                              style:
                                              TextStyleResource.thirdTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "i. Ferry on the Alaska Marine Highway From Belingham, "
                                                  "WA to ketchicon, AK (time - 37 Hours)",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            GestureDetector(
                                              child: Text(
                                                "http://dot.alaska.gov/amhs/",
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: ColorResource.amber,
                                                  decoration:
                                                  TextDecoration.underline,
                                                  decorationThickness: 2,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "1. General passenger ticket (bring sleeping bag and pillow, "
                                                  "you can even set up a tent on the deck)",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),
                                            Text(
                                              "\$450 total ticket cost",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),

                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "2. Rent a berth (cabin) with no facilities or linens (bring sleeping bag and pillow) ",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),
                                            Text(
                                              "\$605 total ticket cost",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),

                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "3. Rent a berth (cabin) with full facilities that include a bathrooms, shower, sink, and all linens (\$997)",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),

                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "4. Example dates - Depart on a Friday at 4pm, arrive 2 days later on Sunday at 5am.",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),
                                            Divider(
                                              thickness: 2,
                                              color: ColorResource.skyblue,
                                              height: 50,
                                            ),

                                            Text(
                                              "ii. Fly from Seattle, WA to ketchicon, AK on Alaska Airlines    (2 hours)",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            GestureDetector(
                                              child: Text(
                                                "http://www.alaskaaair.com/",
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: ColorResource.amber,
                                                  decoration:
                                                  TextDecoration.underline,
                                                  decorationThickness: 2,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "1. Main Cabin - \$225",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "2. First Class - \$260",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),
                                            Divider(
                                              thickness: 2,
                                              color: ColorResource.skyblue,
                                              height: 50,
                                            ),

                                            Text(
                                              "iii. Sail on the annual sailing race from Port Townsend on June 7th (4 days) - \$1200 to \$1500",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            GestureDetector(
                                              child: Text(
                                                "http://r2ak.com/",
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: ColorResource.amber,
                                                  decoration:
                                                  TextDecoration.underline,
                                                  decorationThickness: 2,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Accommodations in Ketchican",
                                              style:
                                              TextStyleResource.thirdTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "i. Camp at Singal Creek Campground or Settler's Cove - \$10-20 a night. Ypu can even rent a forest",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),
                                            Text(
                                              "service cabin at Settler's Cove (\$60)",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            GestureDetector(
                                              child: Text(
                                                "http://www.fs.usda.gov/recorea/tongass/recreation/recarea/?recid=78904&acid=29",style: TextStyle(
                                                fontSize: 18.0,
                                                color: ColorResource.amber,
                                                decoration:
                                                TextDecoration.underline,
                                                decorationThickness: 2,
                                              ),
                                              ),
                                            ),
                                            Divider(
                                              thickness: 2,
                                              color: ColorResource.skyblue,
                                              height: 50,
                                            ),

                                            Text(
                                              "ii. Hostel - \$30 a night",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            GestureDetector(
                                              child: Text(
                                                "http://www.eagleviewhostel.com/",
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: ColorResource.amber,
                                                  decoration:
                                                  TextDecoration.underline,
                                                  decorationThickness: 2,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "OR",
                                              style: TextStyleResource.fourthTextStyle,),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            GestureDetector(
                                              child: Text(
                                                "http://www.ketchikanmethodist.org/hostel/",
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: ColorResource.amber,
                                                  decoration:
                                                  TextDecoration.underline,
                                                  decorationThickness: 2,
                                                ),
                                              ),
                                            ),
                                            Divider(
                                              thickness: 2,
                                              color: ColorResource.skyblue,
                                              height: 50,
                                            ),

                                            Text(
                                              "iii. Hostel - there are many hotel options but the Inn at Creek Street looks very \"Ketchikan-esque\" - \$135-\$145 ",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            GestureDetector(
                                              child: Text(
                                                "http://www.creekstreet.com/",
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: ColorResource.skyblue,
                                                  decoration:
                                                  TextDecoration.underline,
                                                  decorationThickness: 2,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Car rental",
                                              style:
                                              TextStyleResource.thirdTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "i. There are a few options. and this is one",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            GestureDetector(
                                              child: Text(
                                                "http://firstcitycarrental.xom/",style: TextStyle(
                                                fontSize: 18.0,
                                                color: ColorResource.amber,
                                                decoration:
                                                TextDecoration.underline,
                                                decorationThickness: 2,
                                              ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "\$75-\$110",
                                              style:
                                              TextStyleResource.fourthTextStyle,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
