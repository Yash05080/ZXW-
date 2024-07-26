import 'package:e_commerce/screens/Home/homepage.dart';
import 'package:e_commerce/screens/cart/cart.dart';
import 'package:e_commerce/screens/favourites/favourites.dart';
import 'package:e_commerce/screens/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/constants.dart';
import 'package:hexcolor/hexcolor.dart';

class bottomNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<bottomNavigationBar> {
  int currentIndex = 2;
  List screens = [
    Scaffold(),
    FavouritePage(),
    MyHomePage(),
    CartPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        shape: CircleBorder(),
        splashColor: Color.fromARGB(255, 255, 17, 0),
        hoverColor: Color.fromARGB(255, 255, 121, 121),
        backgroundColor: kprimarycolor,
        child: Icon(
          Icons.home,
          color: Colors.white,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 2,
        height: 60,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.grid_view_outlined,
                  size: 32,
                  color:
                      currentIndex == 0 ? kprimarycolor : Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                icon: Icon(
                  Icons.favorite_border,
                  size: 32,
                  color:
                      currentIndex == 1 ? kprimarycolor : Colors.grey.shade400,
                )),
            SizedBox(
              width: 17,
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                icon: Icon(
                  CupertinoIcons.cart,
                  size: 32,
                  color:
                      currentIndex == 3 ? kprimarycolor : Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 4;
                  });
                },
                icon: Icon(
                  Icons.person_outline,
                  size: 32,
                  color:
                      currentIndex == 4 ? kprimarycolor : Colors.grey.shade400,
                )),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
