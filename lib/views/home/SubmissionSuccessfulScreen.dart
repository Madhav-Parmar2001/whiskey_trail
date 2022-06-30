import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ImageResource.dart';
import '../../resources/ColorResource.dart';
import '../../resources/StyleResources.dart';
import '../../resources/widgets/PrimaryBigButton.dart';
import 'CompletedScreen.dart';

class SubmissionSuccessfulScreen extends StatefulWidget {

  @override
  State<SubmissionSuccessfulScreen> createState() => _SubmissionSuccessfulScreenState();
}

class _SubmissionSuccessfulScreenState extends State<SubmissionSuccessfulScreen> {
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
                          child: Icon(Icons.close,color:ColorResource.white,),
                          onTap: () {
                            print("Submission Successful POP");
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(ImageResource.SubmissionSuccessful,height: 300,width: 300,),
                          Text("SUBMISSION SUCCESSFUL",style: TextStyleResource.primaryTextStyle,),
                          const SizedBox(height: 20,),
                          Text("Thank you for submitting distillary",style: TextStyleResource.secondaryTextStyle,),
                          Text("Landmark pictures",style: TextStyleResource.secondaryTextStyle,),
                          const SizedBox(height: 250,),
                          Text("Want to go another Distillery stop ?",style: TextStyleResource.secondaryTextStyle,),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height:MediaQuery.of(context).size.height * 0.075,
                      child: PrimaryBigButton(
                          buttonText: "GO HOME",
                          backgroundcolor: ColorResource.primaryButtonColor,
                          onclick: (){
                            print("GO HOME");
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CompletedScreen()));
                          }
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
