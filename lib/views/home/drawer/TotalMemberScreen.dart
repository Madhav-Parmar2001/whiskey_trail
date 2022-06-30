import 'package:flutter/material.dart';
import '../../../resources/ColorResource.dart';
import '../../../resources/StyleResources.dart';
import '../DrawerScreen.dart';

class TotalMemberScreen extends StatefulWidget {

  @override
  State<TotalMemberScreen> createState() => _TotalMemberScreenState();
}

class _TotalMemberScreenState extends State<TotalMemberScreen> {
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
                          child: Icon(Icons.arrow_back_ios_outlined,color: ColorResource.white,),
                          onTap: () {
                            print("Drawer Open");
                            Scaffold.of(context).openDrawer();
                          },
                        );

                      }
                  ),
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      "Total members",
                      style: TextStyleResource.primaryTextStyle,
                    ),
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
                //                     child: Icon(Icons.arrow_back_ios_outlined,color: ColorResource.white,),
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
                    // Padding(
                    //   padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                    //   child: Text(
                    //     "Total members",
                    //     style: TextStyleResource.primaryTextStyle,
                    //   ),
                    // ),
                  // ],
                // ),
              ),

              const SizedBox(height: 30,),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("Assets/images/profile.png",),
                  backgroundColor: ColorResource.primaryButtonColor,
                  foregroundColor: ColorResource.white,
                  maxRadius: 40,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Patrick Hendricks",style: TextStyleResource.secondaryTextStyle,),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: ColorResource.white,),
                        const SizedBox(width: 5,),
                        Text("Ketchican",style: TextStyleResource.secondaryTextStyle,),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
              ),

              const SizedBox(height: 10,),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("Assets/images/profile.png",),
                  backgroundColor: ColorResource.primaryButtonColor,
                  foregroundColor: ColorResource.white,
                  maxRadius: 40,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Patrick Hendricks",style: TextStyleResource.secondaryTextStyle,),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: ColorResource.white,),
                        const SizedBox(width: 5,),
                        Text("Ketchican",style: TextStyleResource.secondaryTextStyle,),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
              ),

              const SizedBox(height: 10,),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("Assets/images/profile.png",),
                  backgroundColor: ColorResource.primaryButtonColor,
                  foregroundColor: ColorResource.white,
                  maxRadius: 40,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Patrick Hendricks",style: TextStyleResource.secondaryTextStyle,),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: ColorResource.white,),
                        const SizedBox(width: 5,),
                        Text("Ketchican",style: TextStyleResource.secondaryTextStyle,),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
              ),

              const SizedBox(height: 10,),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("Assets/images/profile.png",),
                  backgroundColor: ColorResource.primaryButtonColor,
                  foregroundColor: ColorResource.white,
                  maxRadius: 40,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Patrick Hendricks",style: TextStyleResource.secondaryTextStyle,),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: ColorResource.white,),
                        const SizedBox(width: 5,),
                        Text("Ketchican",style: TextStyleResource.secondaryTextStyle,),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
              ),

              const SizedBox(height: 10,),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("Assets/images/profile.png",),
                  backgroundColor: ColorResource.primaryButtonColor,
                  foregroundColor: ColorResource.white,
                  maxRadius: 40,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Patrick Hendricks",style: TextStyleResource.secondaryTextStyle,),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: ColorResource.white,),
                        const SizedBox(width: 5,),
                        Text("Ketchican",style: TextStyleResource.secondaryTextStyle,),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
              ),

              const SizedBox(height: 10,),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("Assets/images/profile.png",),
                  backgroundColor: ColorResource.primaryButtonColor,
                  foregroundColor: ColorResource.white,
                  maxRadius: 40,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Patrick Hendricks",style: TextStyleResource.secondaryTextStyle,),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: ColorResource.white,),
                        const SizedBox(width: 5,),
                        Text("Ketchican",style: TextStyleResource.secondaryTextStyle,),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
              ),

              const SizedBox(height: 10,),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("Assets/images/profile.png",),
                  backgroundColor: ColorResource.primaryButtonColor,
                  foregroundColor: ColorResource.white,
                  maxRadius: 40,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Patrick Hendricks",style: TextStyleResource.secondaryTextStyle,),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: ColorResource.white,),
                        const SizedBox(width: 5,),
                        Text("Ketchican",style: TextStyleResource.secondaryTextStyle,),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
              ),

              const SizedBox(height: 10,),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("Assets/images/profile.png",),
                  backgroundColor: ColorResource.primaryButtonColor,
                  foregroundColor: ColorResource.white,
                  maxRadius: 40,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Patrick Hendricks",style: TextStyleResource.secondaryTextStyle,),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: ColorResource.white,),
                        const SizedBox(width: 5,),
                        Text("Ketchican",style: TextStyleResource.secondaryTextStyle,),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
              ),

              const SizedBox(height: 10,),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("Assets/images/profile.png",),
                  backgroundColor: ColorResource.primaryButtonColor,
                  foregroundColor: ColorResource.white,
                  maxRadius: 40,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Patrick Hendricks",style: TextStyleResource.secondaryTextStyle,),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: ColorResource.white,),
                        const SizedBox(width: 5,),
                        Text("Ketchican",style: TextStyleResource.secondaryTextStyle,),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
              ),

              const SizedBox(height: 10,),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("Assets/images/profile.png",),
                  backgroundColor: ColorResource.primaryButtonColor,
                  foregroundColor: ColorResource.white,
                  maxRadius: 40,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Patrick Hendricks",style: TextStyleResource.secondaryTextStyle,),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: ColorResource.white,),
                        const SizedBox(width: 5,),
                        Text("Ketchican",style: TextStyleResource.secondaryTextStyle,),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
              ),

              const SizedBox(height: 10,),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset("Assets/images/profile.png",),
                  backgroundColor: ColorResource.primaryButtonColor,
                  foregroundColor: ColorResource.white,
                  maxRadius: 40,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Patrick Hendricks",style: TextStyleResource.secondaryTextStyle,),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: ColorResource.white,),
                        const SizedBox(width: 5,),
                        Text("Ketchican",style: TextStyleResource.secondaryTextStyle,),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
