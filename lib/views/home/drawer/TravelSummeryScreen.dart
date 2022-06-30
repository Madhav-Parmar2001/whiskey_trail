import 'package:flutter/material.dart';

import '../../../resources/ColorResource.dart';
import '../../../resources/StyleResources.dart';
import '../DrawerScreen.dart';

class TravelSummeryScreen extends StatefulWidget {

  @override
  State<TravelSummeryScreen> createState() => _TravelSummeryScreenState();
}

class _TravelSummeryScreenState extends State<TravelSummeryScreen> {
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
                    child: Text("Travel Summery",style: TextStyleResource.primaryTextStyle,),
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
                //                     child: Icon(Icons.short_text,color: Color(0xFFFFFFFF),size: 50,),
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
                //         "Travel Summery",
                //         style: TextStyleResource.primaryTextStyle,
                //       ),
                //     ),
                //   ],
                // ),
              ),

              Image.asset("Assets/images/TravelSummary.png",height: MediaQuery.of(context).size.height*0.45,width: double.maxFinite,),
              const SizedBox(
                height: 10,
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(20, 5, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Travel Summery",style: TextStyleResource.primaryTextStyle,),
                        Row(
                          children: [
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
                      ],
                    ),


                    const SizedBox(
                      height: 20,
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
