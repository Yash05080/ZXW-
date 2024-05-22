import 'package:e_commerce/constants.dart';
import 'package:e_commerce/functions/navigator.dart';
import 'package:e_commerce/screens/Home/functions/customAppBar.dart';
import 'package:e_commerce/screens/Home/functions/searchbar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                height: 30,
              ),
              //appbar
              CustomAppBar(),
              SizedBox(
                height: 15,
              ),
              //searchbar
              CustomSearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
