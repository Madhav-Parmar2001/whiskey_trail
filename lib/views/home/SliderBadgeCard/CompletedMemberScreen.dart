import 'package:flutter/material.dart';
import '../../../resources/ColorResource.dart';
import '../../../resources/StyleResources.dart';

class CompletedMemberScreen extends StatefulWidget {
  @override
  State<CompletedMemberScreen> createState() => _CompletedMemberScreenState();
}

class _CompletedMemberScreenState extends State<CompletedMemberScreen> {
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
                      child: Container(
                        child: GestureDetector(
                          child: Icon(Icons.arrow_back_ios_outlined,color: ColorResource.white),
                          onTap: () {
                            print("Completed Member POP");
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Text(
                        "Completed Members",
                        style: TextStyleResource.primaryTextStyle,
                      ),
                    ),
                  ],
                ),
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
                    Text("Completed on 12-01-2022",style: TextStyleResource.secondaryTextStyle,),
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
                    Text("Completed on 12-01-2022",style: TextStyleResource.secondaryTextStyle,),
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
                  foregroundColor: ColorResource.skyblue,
                  maxRadius: 40,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Patrick Hendricks",style: TextStyleResource.secondaryTextStyle,),
                    const SizedBox(height: 5,),
                    Text("Completed on 12-01-2022",style: TextStyleResource.secondaryTextStyle,),
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
                    Text("Completed on 12-01-2022",style: TextStyleResource.secondaryTextStyle,),
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
                    Text("Completed on 12-01-2022",style: TextStyleResource.secondaryTextStyle,),
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
                    Text("Completed on 12-01-2022",style: TextStyleResource.secondaryTextStyle,),
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
                    Text("Completed on 12-01-2022",style: TextStyleResource.secondaryTextStyle,),
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
                    Text("Completed on 12-01-2022",style: TextStyleResource.secondaryTextStyle,),
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
                    Text("Completed on 12-01-2022",style: TextStyleResource.secondaryTextStyle,),
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
                    Text("Completed on 12-01-2022",style: TextStyleResource.secondaryTextStyle,),
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
                    Text("Completed on 12-01-2022",style: TextStyleResource.secondaryTextStyle,),
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
