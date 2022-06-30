import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import '../../../resources/ColorResource.dart';
import '../../../resources/StyleResources.dart';
import '../DrawerScreen.dart';

class FAQScreen extends StatefulWidget {

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {

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
                          child: const Icon(Icons.short_text,color: Color(0xFFFFFFFF),size: 40,),
                          onTap: () {
                            print("Drawer Open");
                            Scaffold.of(context).openDrawer();
                          },
                        );
                      }
                  ),

                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,0,0),
                    child: Text("FAQ",style: TextStyleResource.primaryTextStyle,),
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
                //         "FAQ",
                //         style: TextStyleResource.primaryTextStyle,
                //       ),
                //     ),
                //   ],
                // ),
              ),

              const SizedBox(height: 5,),
              // MyHomePage(),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ExpandableTheme(
                  data: const ExpandableThemeData(
                    iconColor: Color(0xFF5e96a4),
                    useInkWell: true,
                  ),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: <Widget>[
                      Card1(),
                      Card1(),
                      Card1(),
                      Card1(),
                      Card1(),
                      Card1(),
                      Card1(),
                      Card1(),
                      Card1(),
                      Card1(),
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

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    buildList() {
      return Container(
        color: ColorResource.primaryBodyBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 10, 10, 10),
          child: Text(
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
        ),
      );
    }
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ScrollOnExpand(
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: <Widget>[
                  ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToExpand: true,
                      tapBodyToCollapse: true,
                      hasIcon: false,
                    ),
                    header: Container(
                      color: ColorResource.primaryBodyBackgroundColor,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            ExpandableIcon(
                              theme: const ExpandableThemeData(
                                expandIcon: Icons.add_circle_outlined,
                                collapseIcon: Icons.do_not_disturb_on,
                                iconColor: Colors.white,
                                iconSize: 28.0,
                                iconPadding: EdgeInsets.only(right: 10),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Lorem ipsum dotor sit amet, consetetur sadipscing,"
                                    " elitr sed diam nonumy eirmod ?",
                                style: TextStyleResource.thirdTextStyle,
                                // style: Theme.of(context)
                                //     .textTheme
                                //     .bodyText1
                                //     .copyWith(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    expanded: buildList(), collapsed: null,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}