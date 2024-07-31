import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/clothesgenre.dart';
import 'package:e_commerce/screens/Home/functions/customAppBar.dart';
import 'package:e_commerce/screens/Home/functions/image_slider.dart';
import 'package:e_commerce/screens/Home/functions/productcard.dart';
import 'package:e_commerce/screens/Home/functions/searchbar.dart';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:e_commerce/models/product_model.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentSlider = 0;
  int selectedIndex = 0;

  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentSlider);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    if (index >= 5) {
      _pageController.jumpToPage(0);
      index = 0;
    }
    setState(() {
      currentSlider = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<List<Product>> selectedCategories = [
      all,
      menFashion,
      womenFashion,
      shoes,
      beauty,
      jewelry
    ];
    return Scaffold(
      //backgroundColor: HexColor("f8f8ff"),
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
                  pageController: _pageController,
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
              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selectedIndex == index
                              ? Colors.red[200]
                              : Colors.transparent,
                        ),
                        child: Column(children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage(categoriesList[index].image),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            categoriesList[index].title,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ]),
                      ),
                    );
                  },
                ),
              ), //categories
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
                  itemCount: selectedCategories[selectedIndex].length,
                  itemBuilder: (context, index) {
                    return Productcard(
                      product: selectedCategories[selectedIndex][index],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
