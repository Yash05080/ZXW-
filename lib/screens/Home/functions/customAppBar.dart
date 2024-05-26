import 'package:e_commerce/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: kcontentcolor, padding: EdgeInsets.all(20)),
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.line_horizontal_3_decrease_circle,
              size: 30,
            )),
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: kcontentcolor, padding: EdgeInsets.all(20)),
            onPressed: () {},
            iconSize: 30,
            icon: Icon(
              Icons.notifications_outlined,
            )),
      ],
    );
  }
}
