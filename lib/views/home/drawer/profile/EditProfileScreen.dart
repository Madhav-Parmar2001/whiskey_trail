import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import '../../../../resources/ColorResource.dart';
import '../../../../resources/StyleResources.dart';
import '../../../../resources/widgets/PrimaryBigButton.dart';
import '../ProfileScreen.dart';

class EditProfileScreen extends StatefulWidget {

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.primaryBodyBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back_ios_outlined,color: ColorResource.white,),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  ),
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      "My Profile",
                      style: TextStyleResource.primaryTextStyle,
                    ),
                  ),
                ),


                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     Padding(
                //       padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                //       child: GestureDetector(
                //         child: Icon(Icons.arrow_back_ios_outlined,color: ColorResource.white,),
                //         onTap: () {
                //           print("Edit Profile POP");
                //           Navigator.of(context).pop();
                //         },
                //       ),
                //     ),
                //     Padding(
                //       padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                //       child: Text(
                //         "Edit Profile",
                //         style: TextStyleResource.primaryTextStyle,
                //       ),
                //     ),
                //   ],
                // ),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Badge(
                      position: BadgePosition.bottomEnd(bottom: 7,end: 110),
                      badgeContent: Icon(Icons.camera_alt_sharp,color: ColorResource.white,),
                      elevation: 2,
                      badgeColor: ColorResource.primaryButtonColor,
                      padding: const EdgeInsets.all(5),
                      child: Center(
                        child: CircleAvatar(
                          child: Image.asset("Assets/images/profile.png",),
                          maxRadius: 60,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),

                      Text("Name",style: TextStyleResource.secondaryTextStyle,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: ColorResource.white,
                        style: TextStyle(
                          color: ColorResource.white,
                        ),
                        decoration: InputDecoration(
                          hintText: "Nathan",
                          hintStyle: TextStyle(
                            color: ColorResource.white,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorResource.white,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: ColorResource.white)),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Text("Phone Number",style: TextStyleResource.secondaryTextStyle,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: ColorResource.white,
                        style: TextStyle(
                          color: ColorResource.white,
                        ),
                        decoration: InputDecoration(
                          hintText: "+1 951 564 9999",
                          hintStyle: TextStyle(
                            color: ColorResource.white,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorResource.white,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: ColorResource.white)),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Text("Email Id",style: TextStyleResource.secondaryTextStyle,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: ColorResource.white,
                        style: TextStyle(
                          color: ColorResource.white,
                        ),
                        decoration: InputDecoration(
                          hintText: "nathan@email.com",
                          hintStyle: TextStyle(
                            color: ColorResource.white,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorResource.white,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: ColorResource.white)),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Text("Password",style: TextStyleResource.secondaryTextStyle,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: ColorResource.white,
                        style: TextStyle(
                          color: ColorResource.white,
                        ),
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: ColorResource.white,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorResource.white,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: ColorResource.white)),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Text("Confirm Password",style: TextStyleResource.secondaryTextStyle,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: ColorResource.white,
                        style: TextStyle(
                          color: ColorResource.white,
                        ),
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(
                            color: ColorResource.white,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorResource.white,
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: ColorResource.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 1,
                      child: GestureDetector(
                          child: Container(
                            alignment: Alignment.center,
                            height:MediaQuery.of(context).size.height * 0.055,
                            width: double.infinity,
                            child: Text("CANCEL",style: TextStyleResource.primaryTextStyle,),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorResource.white),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          onTap: (){
                            print("CANCEL");
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                          }
                      ),
                    ),

                    const SizedBox(
                      width: 20,
                    ),

                    Flexible(
                      flex: 1,
                      child: Container(
                        height:MediaQuery.of(context).size.height * 0.057,
                        child: PrimaryBigButton(
                            buttonText: "SAVE",
                            backgroundcolor: ColorResource.primaryButtonColor,
                            onclick: (){
                              print("SAVE");
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                            }
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
