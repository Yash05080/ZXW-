import 'package:e_commerce/screens/Home/homepage.dart';

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final introkey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      pageMargin: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introkey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Show Now",
          body:
              "Indulge in luxury with ZXW, your premier destination for sophisticated fashion. Discover our exclusive collection of meticulously curated clothing, tailored to elevate your style to new heights. With ZXW, shopping becomes an indulgent experience, where luxury meets affordability. Welcome to a world where elegance and sophistication await you.",
          image: Image.asset("assets/images/bagother.png", width: 250),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Big Discount",
          body:
              "Enjoy exclusive discounts on your favorite luxury styles with ZXW! Elevate your wardrobe without breaking the bank with our unbeatable offers. Shop now and experience luxury for less with ZXW.",
          image: Image.asset("assets/images/bags.png", width: 250),
          decoration: pageDecoration,
        ),
        PageViewModel(
            title: "Free dilevery",
            body:
                "Experience the convenience of free delivery with ZXW! Enjoy shopping from the comfort of your home, and we'll deliver your luxury fashion finds straight to your doorstep, completely free of charge. Elevate your shopping experience with ZXW today!",
            image: Image.asset("assets/images/cartfull.png", width: 250),
            decoration: pageDecoration,
            footer: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 177, 0, 0),
                  shadowColor: const Color.fromARGB(255, 255, 68, 68),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Let's shop!!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )),
      ],
      showBackButton: true,
      showDoneButton: false,
      showSkipButton: false,
      back: Text(
        "Back",
        style: TextStyle(
            fontWeight: FontWeight.w600, color: Colors.red, fontSize: 17),
      ),
      next: Text(
        "Next",
        style: TextStyle(
            fontWeight: FontWeight.w600, color: Colors.red, fontSize: 17),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeSize: Size(20, 10),
          activeColor: Colors.red,
          color: Colors.black26,
          spacing: EdgeInsets.symmetric(horizontal: 5),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
    );
  }
}
