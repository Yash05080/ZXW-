import 'package:flutter/material.dart';

class GenreSelector extends StatefulWidget {
  

  @override
  State <GenreSelector> createState() =>  GenreSelectorState();
}

class  GenreSelectorState extends State <GenreSelector> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,

      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){

      },
      separatorBuilder:(context,index)=> SizedBox(height: 20,), 
      itemCount: 2,
      ),
    );
  }
}