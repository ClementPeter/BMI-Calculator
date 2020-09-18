import 'package:flutter/material.dart';

//Custom Component made from Raw material Button

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({@required this.icon, @required this.onpress});

  final IconData icon;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onpress();
      },
      child: Icon(icon),
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
