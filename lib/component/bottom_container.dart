import 'package:flutter/material.dart';
import '../constants.dart';

//This is the Bottom Pink coloured containern at the base of our screen
class BottomContainer extends StatelessWidget {
  BottomContainer({@required this.title, @required this.onpress});

  final String title;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        //padding: EdgeInsets.all(10),
        child: Center(
          child: Text(
            title,
            style: kBottomContainerTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        color: kBottomContainerColour,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
