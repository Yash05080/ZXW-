import 'package:e_commerce/functions/imagesvialink.dart';
import 'package:e_commerce/screens/Home/functions/customAppBar.dart';
import 'package:e_commerce/screens/Home/functions/image_slider.dart';
import 'package:e_commerce/screens/Home/functions/searchbar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              //appbar
              CustomAppBar(),
              SizedBox(
                height: 5,
              ),
              //searchbar
              CustomSearchBar(),
              SizedBox(
                height: 15,
              ),
              // image slider
              ImageSlider(
                  currentSlide: currentSlider,
                  onChange: (value) {
                    setState(() {
                      currentSlider = value;
                    });
                  }),
              SizedBox(
                height: 15,
              ),
              ImageViaLink(
                  Ilink:
                      "https://in.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-printed-nylon-hooded-windbreaker-ready-to-wear--HRB16WKIL22A_PM1_Worn%20view.png?wid=1440&hei=1440")

              //genre selection
            ],
          ),
        ),
      ),
    );
  }
}
