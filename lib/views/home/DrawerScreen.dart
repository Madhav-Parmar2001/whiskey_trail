import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ImageResource.dart';
import '../../resources/ColorResource.dart';
import '../../resources/StyleResources.dart';
import 'HomeScreen.dart';
import 'drawer/AboutUsScreen.dart';
import 'drawer/ContactUsScreen.dart';
import 'drawer/FAQScreen.dart';
import 'drawer/NewsLetterScreen.dart';
import 'drawer/NotificationScreen.dart';
import 'drawer/ProfileScreen.dart';
import 'drawer/TotalMemberScreen.dart';
import 'drawer/TravelSummeryScreen.dart';

class DrawerScreen extends StatefulWidget {

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: ColorResource.primaryBodyBackgroundColor,
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 0, 30),
                  child: CircleAvatar(
                    child: Image.asset(ImageResource.profile),
                    backgroundColor: ColorResource.primaryButtonColor,
                    foregroundColor: ColorResource.white,
                    maxRadius: 40,
                  ),
                ),

                const SizedBox(width: 30,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,50,0,63),
                  child: Text("Nathan",style: TextStyleResource.primaryTextStyle,),
                ),
              ],
            ),


            ListTile(
              leading: Image.asset(ImageResource.homeicon,fit: BoxFit.cover,scale: 2.3,),
              title: Text("Home",style: TextStyleResource.secondaryTextStyle,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            const SizedBox(height: 10,),

            ListTile(
              leading: Image.asset(ImageResource.TotalMemberIcon,fit: BoxFit.cover,scale: 2.5,),
              title: Text("Total members",style: TextStyleResource.secondaryTextStyle,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TotalMemberScreen()));
              },
            ),
            const SizedBox(height: 10,),

            ListTile(
              leading: Image.asset(ImageResource.TravelSummeryIcon,fit: BoxFit.cover,scale: 2.5,),
              title: Text("Travel Summery",style: TextStyleResource.secondaryTextStyle,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => TravelSummeryScreen()));
              },
            ),
            const SizedBox(height: 10,),

            ListTile(
              leading: Image.asset(ImageResource.FAQ,fit: BoxFit.cover,scale: 2.5,),
              title: Text("FAQ",style: TextStyleResource.secondaryTextStyle,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => FAQScreen()));
              },
            ),
            const SizedBox(height: 10,),

            ListTile(
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: Icon(Icons.mail_outline,size: 30,color: ColorResource.white,),
              ),
              title: Text("Newsletter",style: TextStyleResource.secondaryTextStyle,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewsLetterScreen()));
              },
            ),
            const SizedBox(height: 10,),

            ListTile(
              leading: Image.asset(ImageResource.ProfileAndAbiutusIcon,fit: BoxFit.cover,scale: 2.3,),
              title: Text("Profile",style: TextStyleResource.secondaryTextStyle,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
            ),
            const SizedBox(height: 10,),

            ListTile(
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: Icon(Icons.notifications_none_outlined,size: 30,color: ColorResource.white,),
              ),
              title: Text("Notifications",style: TextStyleResource.secondaryTextStyle,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationScreen()));
              },
            ),
            const SizedBox(height: 10,),

            ListTile(
              leading: Image.asset(ImageResource.contacticon,fit: BoxFit.cover,height: 45,width: 40,),
              title: Text("Contact Us",style: TextStyleResource.secondaryTextStyle,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContactUsScreen()));
              },
            ),
            const SizedBox(height: 10,),

            ListTile(
              leading: Image.asset(ImageResource.ProfileAndAbiutusIcon,fit: BoxFit.cover,scale: 2.3,),
              title: Text("About Us",style: TextStyleResource.secondaryTextStyle,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUsScreen()));
              },
            ),
            const SizedBox(height: 10,),


            ListTile(
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: Icon(Icons.login,size: 30, color: ColorResource.white,),
              ),
              title: Text("Log Out",style: TextStyleResource.secondaryTextStyle,),
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
