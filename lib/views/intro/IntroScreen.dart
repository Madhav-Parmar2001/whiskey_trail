import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:whiskey_trail/resources/ColorResource.dart';
import 'package:whiskey_trail/views/auth/LoginScreen.dart';
import '../../resources/ImageResource.dart';
import '../../resources/StyleResources.dart';
import '../../resources/widgets/PrimaryCircleButton.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _controller = PageController(
    initialPage: 0,
  );

  int _currentPage = 0;

  final List<Widget> _pages = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Expanded(
            flex: 7,
            child: Container(
                child: Image.asset(
              ImageResource.onboarding22,
              width: double.infinity,
              height: 450,
            ))),
        Text(
          "Register & Pay Registration Fee",
          style: TextStyleResource.primaryTextStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Text(
              "Lorem ipsum dotor sit amet, consetetur sadipscing,"
              " elitr sed diam nonumy eirmod tempor inviduct ut"
              " labore et dolore magna aliquyam erat, sed diam.",
              style: TextStyleResource.secondaryTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Expanded(
            flex: 7,
            child: Container(
                child: Image.asset(
              ImageResource.onboarding33,
              width: double.infinity,
              height: 450,
            ))),
        Text(
          "Explore 14 separate distilleries",
          style: TextStyleResource.primaryTextStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Text(
              "Lorem ipsum dotor sit amet, consetetur sadipscing,"
              " elitr sed diam nonumy eirmod tempor inviduct ut"
              " labore et dolore magna aliquyam erat, sed diam.",
              style: TextStyleResource.secondaryTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Expanded(
            flex: 7,
            child: Container(
                child: Image.asset(
              ImageResource.onboarding44,
              width: double.infinity,
              height: 450,
            ))),
        Text(
          "Upload your selfie Images",
          style: TextStyleResource.primaryTextStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Text(
              "Lorem ipsum dotor sit amet, consetetur sadipscing,"
              " elitr sed diam nonumy eirmod tempor inviduct ut"
              " labore et dolore magna aliquyam erat, sed diam.",
              style: TextStyleResource.secondaryTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Container(
            child: PageView(
              controller: _controller,
              children: _pages,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
            ),
          ),
        ),

        DotsIndicator(
          dotsCount: _pages.length,
          position: _currentPage.toDouble(),
          decorator: DotsDecorator(
            color: ColorResource.white,
            size: const Size.fromRadius(5),
            activeColor: ColorResource.primaryButtonColor,
            activeSize: const Size.fromRadius(7.0),
          ),
        ),
        const SizedBox(
          height: 70,
        ), // Down Side Height Add
      ],
    );
  }
}

class IntroScreen extends StatefulWidget {
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResource.primaryBodyBackgroundColor,
      body: Column(
        children: [
          Expanded(child: OnBoardingScreen()),
          PrimaryCircleButton(
            onclick: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ));
              print("Hello Madhav");
            },
          ),
          const SizedBox(
            height: 70.0,
          ), // Down Side Height add
        ],
      ),
    );
  }
}
