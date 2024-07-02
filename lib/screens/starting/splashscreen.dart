import 'dart:async';

import 'package:e_commerce/screens/starting/onboardscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("assets/images/wardrobe.jpeg"),
                  fit: BoxFit.cover,
                  opacity: 0.4,
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart_outlined,
                  size: 100,
                  color: Colors.white,
                ),
                Text(
                  "ZXW",
                  style: TextStyle(fontSize: 30, color: Colors.red),
                )
              ],
            )));
  }
}
