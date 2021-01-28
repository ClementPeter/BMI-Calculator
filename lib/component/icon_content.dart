import 'package:flutter/material.dart';
import '../constants.dart';

//The content in our Resuable Widget
class IconContent extends StatelessWidget {
  //Properties
  //final Icon icons;
  final String gender;
  final IconData icon;

  //Our Constructor to enable us create other Custom instances
  IconContent({this.icon, this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100,
        ),
        SizedBox(height: 15.0),
        Text(
          gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
