import 'package:flutter/material.dart';
import '../../../../resources/ColorResource.dart';
import '../../../../resources/StyleResources.dart';

class PrivacyPolicyScreen extends StatefulWidget {

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.primaryBodyBackgroundColor,

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.short_text,color: ColorResource.white,size: 40,),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  ),

                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,0,0),
                    child: Text("Privacy Policy",style: TextStyleResource.primaryTextStyle,),
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
                //             child: Icon(Icons.short_text,color: ColorResource.white,size: 50,),
                //             onTap: () {
                //               print("Privacy Policy");
                //               Navigator.of(context).pop();
                //             },
                //           );
                //         }),
                //       ),
                //     ),
                //     Padding(
                //       padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                //       child: Text(
                //         "Privacy Policy",
                //         style: TextStyleResource.primaryTextStyle,
                //       ),
                //     ),
                //   ],
                // ),
              ),

              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
