import 'package:flutter/material.dart';
import '../../resources/ColorResource.dart';
import '../../resources/ImageResource.dart';
import '../../resources/StyleResources.dart';
import '../../resources/widgets/PrimarySliderCard.dart';
import 'DrawerScreen.dart';
import 'SelectPicsScreen.dart';
import 'SliderBadgeCard/Ketchican22.dart';
import 'SliderBadgeCard/KetchicanScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
                padding: const EdgeInsets.fromLTRB(0,30,0,0),
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
                    padding: const EdgeInsets.fromLTRB(50,0,0,0),
                    child: Text("Home",style: TextStyleResource.primaryTextStyle,),
                  ),

                  trailing: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(Icons.search_outlined,size: 30,color: ColorResource.white,),
                        onPressed: (){
                          print("Search");
                        },
                      ),
                      const SizedBox(width: 10,),
                      IconButton(
                        icon: Icon(Icons.notifications_none_outlined,size: 30,color: ColorResource.white,),
                        onPressed: (){
                          print("Notifications");
                        },
                      ),
                    ],
                  ),
                ),

                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     Padding(
                //       padding: EdgeInsets.fromLTRB(0,0,0,0),
                //       child: Container(
                //         child: Builder(
                //           builder: (context) {
                //             return GestureDetector(
                //               child: Icon(Icons.short_text,color: ColorResource.white,size: 50,),
                //               onTap: () {
                //                 print("Drawer Open");
                //                 Scaffold.of(context).openDrawer();
                //               },
                //             );
                //           }
                //         ),
                //       ),
                //     ),
                //     Padding(
                //       padding: EdgeInsets.fromLTRB(50,0,0,0),
                //       child: Text("Home",style: TextStyleResource.primaryTextStyle,),
                //     ),
                //
                //     Padding(
                //       padding: EdgeInsets.fromLTRB(110,0,0,0),
                //       child: Container(
                //         child: GestureDetector(
                //           child: Icon(Icons.search_outlined,size: 30,color: ColorResource.white,),
                //           onTap: () {
                //             print("Search");
                //           },
                //         ),
                //       ),
                //     ),
                //
                //     Padding(
                //       padding: EdgeInsets.fromLTRB(40,0,0,0),
                //       child: Container(
                //         child: GestureDetector(
                //           child: Icon(Icons.notifications_none_outlined,size: 30,color: ColorResource.white,),
                //           onTap: () {
                //             print("Notifications");
                //           },
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ),

              const SizedBox(height: 50,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20,0,0,0),
                        child: Text("Discover",style: TextStyle(
                          color: ColorResource.white,
                          fontSize: 40.0,
                        )),
                      )
                  ),

                  const SizedBox(height: 20,),
                  Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20,0,0,0),
                        child: Text("Explore Alaska Whiskey Trail Map",style: TextStyleResource.primaryTextStyle,),
                      )
                  ),
                  const SizedBox(height: 20,),
                  Image.asset(ImageResource.Map),

                  const SizedBox(height: 20,),
                  Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20,0,0,0),
                        child: Text("14 separate distilleries ",style: TextStyleResource.primaryTextStyle,),
                      )
                  ),

                  const SizedBox(height: 20,),
                  Container(
                    height: 100.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        PrimarySliderCard(
                          textname: "1",
                          imagename: ImageResource.Splash_Screen,
                          onclick: (){
                            print("Hello 1");
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Ketchican22()));
                          },
                        ),

                        PrimarySliderCard(
                          textname: "2",
                          imagename: ImageResource.Map,
                          onclick: (){
                            print("Hello 2");
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectPicsScreen()));
                          },
                        ),

                        PrimarySliderCard(
                          textname: "3",
                          imagename: ImageResource.Splash_Screen,
                          onclick: (){
                            print("Hello 3");
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => KetchicanScreen()));
                          },
                        ),

                        PrimarySliderCard(
                          textname: "4",
                          imagename: ImageResource.Map,
                          onclick: (){
                            print("Hello 4");
                          },
                        ),

                        PrimarySliderCard(
                          textname: "5",
                          imagename: ImageResource.Splash_Screen,
                          onclick: (){
                            print("Hello 5");
                          },
                        ),

                        PrimarySliderCard(
                          textname: "6",
                          imagename: ImageResource.Map,
                          onclick: (){
                            print("Hello 6");
                          },
                        ),

                        PrimarySliderCard(
                          textname: "7",
                          imagename: ImageResource.Splash_Screen,
                          onclick: (){
                            print("Hello 7");
                          },
                        ),

                        PrimarySliderCard(
                          textname: "8",
                          imagename: ImageResource.Map,
                          onclick: (){
                            print("Hello 8");
                          },
                        ),

                        PrimarySliderCard(
                          textname: "9",
                          imagename: ImageResource.Splash_Screen,
                          onclick: (){
                            print("Hello 9");
                          },
                        ),

                        PrimarySliderCard(
                          textname: "10",
                          imagename: ImageResource.Map,
                          onclick: (){
                            print("Hello 10");
                          },
                        ),

                        PrimarySliderCard(
                          textname: "11",
                          imagename: ImageResource.Splash_Screen,
                          onclick: (){
                            print("Hello 11");
                          },
                        ),

                        PrimarySliderCard(
                          textname: "12",
                          imagename: ImageResource.Map,
                          onclick: (){
                            print("Hello 12");
                          }
                        ),

                        PrimarySliderCard(
                          textname: "13",
                          imagename: ImageResource.Splash_Screen,
                          onclick: (){
                            print("Hello 13");
                          }
                        ),

                        PrimarySliderCard(
                          textname: "14",
                          imagename: ImageResource.Map,
                          onclick: (){
                            print("Hello 14");
                          }
                        ),

                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
 }
}