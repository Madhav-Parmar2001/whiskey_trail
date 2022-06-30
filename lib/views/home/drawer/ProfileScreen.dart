import 'package:flutter/material.dart';
import 'package:whiskey_trail/views/home/drawer/profile/PrivacyPolicyScreen.dart';
import 'package:whiskey_trail/views/home/drawer/profile/TermsAndConditionsScreen.dart';
import '../../../resources/ColorResource.dart';
import '../../../resources/StyleResources.dart';
import '../DrawerScreen.dart';
import 'NotificationScreen.dart';
import 'profile/EditProfileScreen.dart';

class ProfileScreen extends StatefulWidget {

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                          child: Icon(Icons.short_text,color:ColorResource.white,size: 40,),
                          onTap: () {
                            print("Drawer Open");
                            Scaffold.of(context).openDrawer();
                          },
                        );
                      }
                  ),

                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,0,0),
                    child: Text("Profile",style: TextStyleResource.primaryTextStyle,),
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
                //                     child: Icon(Icons.short_text,color:ColorResource.white,size: 50,),
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
                //         "Profile",
                //         style: TextStyleResource.primaryTextStyle,
                //       ),
                //     ),
                //   ],
                // ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: Image.asset("Assets/images/profile.png",),
                          maxRadius: 40,
                        ),

                        const SizedBox(width: 30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nathan",style: TextStyleResource.primaryTextStyle,),
                            const SizedBox(height: 10,),
                            Text("Dieppe, Canada.",style: TextStyleResource.secondaryTextStyle,),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(90,0,0,0),
                          child: IconButton(
                            icon: Icon(Icons.edit,color:ColorResource.white,),
                          ),
                        ),
                        Divider(
                          color:ColorResource.white,
                          thickness: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListTile(
                  leading: Icon(Icons.person,color:ColorResource.white,),
                  title: Text("My Profile",style: TextStyleResource.secondaryTextStyle,),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,color:ColorResource.white,),
                  onTap: (){
                    print("My Profile");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfileScreen()));
                  },
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
                indent: 15,
                endIndent: 15,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListTile(
                  leading: Icon(Icons.notifications,color:ColorResource.white,),
                  title: Text("My Notifications",style: TextStyleResource.secondaryTextStyle,),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,color:ColorResource.white,),
                  onTap: (){
                    print("My Notification");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationScreen()));
                  },
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
                indent: 15,
                endIndent: 15,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListTile(
                  leading: Icon(Icons.description,color:ColorResource.white,),
                  title: Text("Terms and Conditions",style: TextStyleResource.secondaryTextStyle,),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,color:ColorResource.white,),
                  onTap: (){
                    print("Terms and Conditions");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TermsAndConditionsScreen()));
                  },
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
                indent: 15,
                endIndent: 15,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListTile(
                  leading: Icon(Icons.shield,color:ColorResource.white,),
                  title: Text("Privacy Policy",style: TextStyleResource.secondaryTextStyle,),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,color:ColorResource.white,),
                  onTap: (){
                    print("Privacy Policy");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PrivacyPolicyScreen()));
                  },
                ),
              ),
              Divider(
                thickness: 2,
                color: ColorResource.skyblue,
                indent: 15,
                endIndent: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
