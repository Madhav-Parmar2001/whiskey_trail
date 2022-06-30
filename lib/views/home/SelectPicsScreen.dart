import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ImageResource.dart';
import '../../resources/ColorResource.dart';
import '../../resources/StyleResources.dart';
import '../../resources/widgets/PrimaryCircleButton.dart';
import '../../resources/widgets/SecondaryCircleButton.dart';
import 'SubmissionSuccessfulScreen.dart';

class SelectPicsScreen extends StatefulWidget {
  @override
  State<SelectPicsScreen> createState() => _SelectPicsScreenState();
}

class _SelectPicsScreenState extends State<SelectPicsScreen> {
  final _controller = PageController(
    initialPage: 0,
  );

  int _currentPage = 0;

  final List<Widget> _pages = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SecondaryCircleButton(
                  image: ImageResource.facebook,
                  onclick: () {
                    print("facebook");
                  }),
              const SizedBox(
                width: 15,
              ),
              SecondaryCircleButton(
                  image: ImageResource.instagram,
                  onclick: () {
                    print("Instagram");
                  }),
              const SizedBox(
                width: 15,
              ),
              SecondaryCircleButton(
                  image: ImageResource.twitter,
                  onclick: () {
                    print("twitter");
                  }),
              const SizedBox(
                width: 15,
              ),
              SecondaryCircleButton(
                  image: ImageResource.whatsapp,
                  onclick: () {
                    print("Whatsapp");
                  }),
              const SizedBox(
                width: 15,
              ),
              SecondaryCircleButton(
                  image: ImageResource.messanger,
                  onclick: () {
                    print("Messanger");
                  }),
            ],
          ),
        ),
      ],
    ),

    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SecondaryCircleButton(
                  image: ImageResource.facebook,
                  onclick: () {
                    print("facebook");
                  }),
              const SizedBox(
                width: 15,
              ),
              SecondaryCircleButton(
                  image: ImageResource.instagram,
                  onclick: () {
                    print("Instagram");
                  }),
              const SizedBox(
                width: 15,
              ),
              SecondaryCircleButton(
                  image: ImageResource.twitter,
                  onclick: () {
                    print("twitter");
                  }),
              const SizedBox(
                width: 15,
              ),
              SecondaryCircleButton(
                  image: ImageResource.whatsapp,
                  onclick: () {
                    print("Whatsapp");
                  }),
              const SizedBox(
                width: 15,
              ),
              SecondaryCircleButton(
                  image: ImageResource.messanger,
                  onclick: () {
                    print("Messanger");
                  }),
            ],
          ),
        ),
      ],
    ),

    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SecondaryCircleButton(
                  image: ImageResource.facebook,
                  onclick: () {
                    print("facebook");
                  }),
              const SizedBox(
                width: 15,
              ),
              SecondaryCircleButton(
                  image: ImageResource.instagram,
                  onclick: () {
                    print("Instagram");
                  }),
              const SizedBox(
                width: 15,
              ),
              SecondaryCircleButton(
                  image: ImageResource.twitter,
                  onclick: () {
                    print("twitter");
                  }),
              const SizedBox(
                width: 15,
              ),
              SecondaryCircleButton(
                  image: ImageResource.whatsapp,
                  onclick: () {
                    print("Whatsapp");
                  }),
              const SizedBox(
                width: 15,
              ),
              SecondaryCircleButton(
                  image: ImageResource.messanger,
                  onclick: () {
                    print("Messanger");
                  }),
            ],
          ),
        ),
      ],
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.primaryBodyBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: ColorResource.white,
                    ),
                    onPressed: (){
                      print("Select Pics POP");
                      Navigator.pop(context);
                    },
                  ),
                  title: Text(
                    "2 Photos Selected",
                    style: TextStyleResource.primaryTextStyle,
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.share_outlined,
                      color: ColorResource.white,
                    ),
                    onPressed: () {
                      showModalBottomSheet<void>(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: const Radius.circular(40),
                            ),
                          ),
                          builder: (BuildContext context) {
                            return Container(
                              height: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(20,20,0,0),
                                    child: Text(
                                      "Share Via",
                                      style: TextStyle(
                                        fontSize: 27,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: PageView(
                                        controller: _controller,
                                        children: _pages,
                                        onPageChanged: (index){
                                          setState(() {
                                            _currentPage = index;
                                          });
                                        },
                                      ),
                                    ),
                                  ),


                                  const SizedBox(height: 10,),
                                  Center(
                                    child: DotsIndicator(
                                      dotsCount: _pages.length,
                                      position: _currentPage.toDouble(),
                                      decorator: DotsDecorator(
                                        color: ColorResource.white,
                                        size: const Size.fromRadius(5),
                                        activeColor: ColorResource.primaryButtonColor,
                                        activeSize: const Size.fromRadius(7.0),
                                      ),
                                    ),
                                  ),
                                  // SizedBox(height: 70,),
                                ],
                              ),
                            );
                          });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children: [
                    Container(
                      child: Image.asset(
                        ImageResource.Map,
                      ),
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorResource.white,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        ImageResource.Map,
                      ),
                      width: 25.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorResource.white,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        ImageResource.Map,
                      ),
                      width: 25.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorResource.white,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        ImageResource.Map,
                      ),
                      width: 25.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorResource.white,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        ImageResource.Map,
                      ),
                      width: 25.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorResource.white,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        ImageResource.Map,
                      ),
                      width: 25.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorResource.white,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        ImageResource.Map,
                      ),
                      width: 25.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorResource.white,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        ImageResource.Map,
                      ),
                      width: 25.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorResource.white,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 350,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Submit",
                      style: TextStyleResource.primaryTextStyle,
                    ),
                    PrimaryCircleButton(
                      onclick: () {
                        print("Select");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                SubmissionSuccessfulScreen()));
                      },
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
