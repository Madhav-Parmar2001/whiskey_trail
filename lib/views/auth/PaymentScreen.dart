import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ImageResource.dart';
import '../../resources/ColorResource.dart';
import '../../resources/StyleResources.dart';
import '../../resources/widgets/PrimaryBigButton.dart';
import '../../resources/widgets/PrimaryRightTop_Corner.dart';
import '../../resources/widgets/PrimaryTextFormField.dart';
import 'PaymentSuccessfullScreen.dart';

class PaymentScreen extends StatefulWidget {
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                            print("Payment POP");
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
                          "Payment",
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
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text("\$ 200.00",style: TextStyleResource.primaryTextStyle,),

                      const SizedBox(
                        height: 30,
                      ),
                      Text("ENTER YOUR CARD DETAILS",style: TextStyleResource.primaryTextStyle,),

                      const SizedBox(
                        height: 20,
                      ),
                      Text("Name on Card",style: TextStyleResource.secondaryTextStyle,),

                      const SizedBox(
                        height: 10,
                      ),
                      PrimaryTextFormField(
                        keybord: TextInputType.text,
                        hintword: "Name on card",
                        ispassword: false,
                        onclick: (){},
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Text("Card Number",style: TextStyleResource.secondaryTextStyle,),

                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: ColorResource.white,
                        style: TextStyle(
                          color: ColorResource.white,
                        ),
                        decoration: InputDecoration(
                          hintText: "Card Number",
                          hintStyle: TextStyle(
                            color: ColorResource.white,
                          ),
                          suffixIcon: Container(
                            height: 10,
                            width: 20,
                            alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0,0,15,0),
                                child: Image.asset(ImageResource.visa,),
                              ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: BorderSide(color: ColorResource.white,)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: BorderSide(color: ColorResource.white,)),
                        ),
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Expiry",style: TextStyleResource.secondaryTextStyle,),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  PrimaryTextFormField(
                                    keybord: TextInputType.number,
                                    hintword: "MM/YY",
                                    ispassword: false,
                                    onclick: (){},
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("CVV",style: TextStyleResource.secondaryTextStyle,),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  PrimaryTextFormField(
                                    keybord: TextInputType.number,
                                    hintword: "Card Number",
                                    ispassword: false,
                                    onclick: (){},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 120,
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentSuccessfullScreen()));
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
