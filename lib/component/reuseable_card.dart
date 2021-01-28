import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //Properties
  final Color colour;
  final Widget cardChild;
  final Function onpress;

  //Constructor to accept Properties
  ReusableCard({@required this.colour, this.cardChild, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
