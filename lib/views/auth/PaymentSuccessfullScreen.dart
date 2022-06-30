import 'package:flutter/material.dart';
import 'package:whiskey_trail/views/home/HomeScreen.dart';
import '../../resources/ColorResource.dart';
import '../../resources/ImageResource.dart';
import '../../resources/StyleResources.dart';
import '../../resources/widgets/PrimaryBigButton.dart';
import '../../resources/widgets/PrimaryRightTop_Corner.dart';

class PaymentSuccessfullScreen extends StatefulWidget {
  @override
  State<PaymentSuccessfullScreen> createState() => _PaymentSuccessfullScreenState();
}

class _PaymentSuccessfullScreenState extends State<PaymentSuccessfullScreen> {

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
                          child: Icon(Icons.close,color: ColorResource.white,),
                          onTap: () {
                            print("Payment Successful POP");
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      const SizedBox(height: 50,),
                    ],
                  ),
                  PrimaryRightTop_Corner(),
                ],
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(ImageResource.Successfully,width: 600,height: 300,),
                    Text("Payment Completed",
                      style: TextStyleResource.primaryTextStyle,textAlign: TextAlign.left,),
                    Text("Successfully",
                      style: TextStyleResource.primaryTextStyle,textAlign: TextAlign.left,),
                  ],
                ),
              ),

              const SizedBox(height: 200,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height:MediaQuery.of(context).size.height * 0.075,
                  child: PrimaryBigButton(
                      buttonText: "GET STARTED",
                      backgroundcolor: ColorResource.primaryButtonColor,
                      onclick: (){
                        print("GET STARTED");
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
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
