import 'package:flutter/material.dart';
import '../../../resources/ColorResource.dart';
import '../../../resources/StyleResources.dart';
import '../DrawerScreen.dart';

class NotificationScreen extends StatefulWidget {

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                padding: const EdgeInsets.fromLTRB(00, 30, 0, 0),
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
                    child: Text("Notifications",style: TextStyleResource.primaryTextStyle,),
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
                //         "Notifications",
                //         style: TextStyleResource.primaryTextStyle,
                //       ),
                //     ),
                //   ],
                // ),
              ),

              const SizedBox(height: 20,),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(2,2,0,50),
                                child: Icon(Icons.circle),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(10,7,0,10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Lorem ipsum dotor",
                                      style: TextStyle(
                                        color: ColorResource.black,
                                        fontSize: 25,
                                      ),
                                    ),

                                    const SizedBox(height: 10,),
                                    Text("Lorem ipsum dotor sit amet, consetetur",
                                      style: TextStyle(
                                        color: ColorResource.black,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(0,2,0,60),
                                child: Text("06-Apr-2022",
                                  style: TextStyle(
                                    color: ColorResource.black,
                                    fontSize: 14,
                                  ),),
                              ),

                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorResource.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(2,2,0,50),
                                child: Icon(Icons.circle),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(10,7,0,10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Lorem ipsum dotor",
                                      style: TextStyle(
                                        color: ColorResource.black,
                                        fontSize: 25,
                                      ),
                                    ),

                                    const SizedBox(height: 10,),
                                    Text("Lorem ipsum dotor sit amet, consetetur",
                                      style: TextStyle(
                                        color: ColorResource.black,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(0,2,0,60),
                                child: Text("06-Apr-2022",
                                  style: TextStyle(
                                    color: ColorResource.black,
                                    fontSize: 14,
                                  ),),
                              ),

                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorResource.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(2,2,0,50),
                                child: Icon(Icons.circle),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(10,7,0,10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Lorem ipsum dotor",
                                      style: TextStyle(
                                        color: ColorResource.black,
                                        fontSize: 25,
                                      ),
                                    ),

                                    const SizedBox(height: 10,),
                                    Text("Lorem ipsum dotor sit amet, consetetur",
                                      style: TextStyle(
                                        color: ColorResource.black,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(0,2,0,60),
                                child: Text("06-Apr-2022",
                                  style: TextStyle(
                                    color: ColorResource.black,
                                    fontSize: 14,
                                  ),),
                              ),

                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorResource.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(2,2,0,50),
                                child: Icon(Icons.circle),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(10,7,0,10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Lorem ipsum dotor",
                                      style: TextStyle(
                                        color: ColorResource.black,
                                        fontSize: 25,
                                      ),
                                    ),

                                    const SizedBox(height: 10,),
                                    Text("Lorem ipsum dotor sit amet, consetetur",
                                      style: TextStyle(
                                        color: ColorResource.black,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(0,2,0,60),
                                child: Text("06-Apr-2022",
                                  style: TextStyle(
                                    color: ColorResource.black,
                                    fontSize: 14,
                                  ),),
                              ),

                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorResource.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(2,2,0,50),
                                child: Icon(Icons.circle),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(10,7,0,10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Lorem ipsum dotor",
                                      style: TextStyle(
                                        color: ColorResource.black,
                                        fontSize: 25,
                                      ),
                                    ),

                                    const SizedBox(height: 10,),
                                    Text("Lorem ipsum dotor sit amet, consetetur",
                                      style: TextStyle(
                                        color: ColorResource.black,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(0,2,0,60),
                                child: Text("06-Apr-2022",
                                  style: TextStyle(
                                    color: ColorResource.black,
                                    fontSize: 14,
                                  ),),
                              ),

                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorResource.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(2,2,0,50),
                                child: Icon(Icons.circle),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(10,7,0,10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Lorem ipsum dotor",
                                      style: TextStyle(
                                        color: ColorResource.black,
                                        fontSize: 25,
                                      ),
                                    ),

                                    const SizedBox(height: 10,),
                                    Text("Lorem ipsum dotor sit amet, consetetur",
                                      style: TextStyle(
                                        color: ColorResource.black,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(0,2,0,60),
                                child: Text("06-Apr-2022",
                                  style: TextStyle(
                                    color: ColorResource.black,
                                    fontSize: 14,
                                  ),),
                              ),

                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorResource.white,
                        ),
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
