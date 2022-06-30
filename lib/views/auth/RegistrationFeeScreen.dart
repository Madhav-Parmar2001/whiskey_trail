import 'package:flutter/material.dart';
import '../../resources/ColorResource.dart';
import '../../resources/StyleResources.dart';
import '../../resources/widgets/PrimaryBigButton.dart';
import '../../resources/widgets/PrimaryRightTop_Corner.dart';
import 'PaymentScreen.dart';

class RegistrationFeeScreen extends StatefulWidget {
  @override
  State<RegistrationFeeScreen> createState() => _RegistrationFeeScreenState();
}

class _RegistrationFeeScreenState extends State<RegistrationFeeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.primaryBodyBackgroundColor,

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, top: 30,right: 0,bottom: 0,),
                        child: GestureDetector(
                          child: Icon(Icons.arrow_back_ios_outlined,color: ColorResource.white,),
                          onTap: () {
                            print("Registration fee POP");
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Registration Fee",
                            style: TextStyle(
                            fontSize: 35.0,
                            color: ColorResource.white,
                            wordSpacing: 3.0,
                          ),
                          ),
                      ),
                    ],
                  ),
                  PrimaryRightTop_Corner(),
                ],
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
                    Text("Lorem ipsum dotor sit amet, consetetur sadipscing,"
                        " elitr sed diam nonumy eirmod tempor inviduct ut"
                        " labored et dolore magna aliquyam erat, sed diam."
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
                      height: 30,
                    ),
                    Text(
                      "\$ 200.00",
                      style: TextStyleResource.primaryTextStyle,textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 170,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height:MediaQuery.of(context).size.height * 0.075,
                  child: PrimaryBigButton(
                      buttonText: "Pay Now",
                      backgroundcolor: ColorResource.primaryButtonColor,
                      onclick: (){
                        print("Pay Now");
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentScreen()));
                      }
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
