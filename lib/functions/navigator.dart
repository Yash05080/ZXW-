import 'package:e_commerce/screens/cart/cart.dart';
import 'package:e_commerce/screens/favourites/favourites.dart';
import 'package:e_commerce/screens/Home/homepage.dart';
import 'package:e_commerce/screens/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          alignment: Alignment.topCenter,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: GridView.count(
            crossAxisCount: 4,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Color.fromARGB(255, 255, 121, 121),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ));
                    },
                    child: Icon(
                      CupertinoIcons.home,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Color.fromARGB(255, 255, 121, 121),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FavouritePage(),
                          ));
                    },
                    child: Icon(
                      CupertinoIcons.heart,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Color.fromARGB(255, 255, 121, 121),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartPage(),
                          ));
                    },
                    child: Icon(
                      CupertinoIcons.cart,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ));
                  },
                  child: Container(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromARGB(255, 255, 121, 121),
                      child: Container(
                        width: 40,
                        height: 40,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/sky1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Color.fromARGB(255, 255, 121, 121),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
