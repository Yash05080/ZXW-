import 'package:e_commerce/screens/Home/functions/customAppBar.dart';
import 'package:e_commerce/screens/Home/functions/image_slider.dart';
import 'package:e_commerce/screens/Home/functions/productcard.dart';
import 'package:e_commerce/screens/Home/functions/searchbar.dart';
import 'package:e_commerce/screens/Home/functions/selectgenre.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:e_commerce/models/product_model.dart';

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

              //genre selection
              GenreSelector(), //categories
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special for you",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
              // shoping items
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: all.length,
                  itemBuilder: (context, index) {
                    return Productcard(
                      product: all[index],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
