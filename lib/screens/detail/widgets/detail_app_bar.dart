import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          // back button

          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
            ),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
          ),

          const Spacer(),

          //share button

          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.ios_share_outlined,
            ),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
          ),

          SizedBox(
            width: 10,
          ),

          //favourite button
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline,
            ),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
          )
        ],
      ),
    );
  }
}
