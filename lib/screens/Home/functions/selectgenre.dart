import 'package:e_commerce/models/clothesgenre.dart';
import 'package:flutter/material.dart';

class GenreSelector extends StatefulWidget {
  @override
  State<GenreSelector> createState() => GenreSelectorState();
}

class GenreSelectorState extends State<GenreSelector> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(children: [
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(categoriesList[index].image),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              categoriesList[index].title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ]);
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 20,
        ),
        itemCount: categoriesList.length,
      ),
    );
  }
}
