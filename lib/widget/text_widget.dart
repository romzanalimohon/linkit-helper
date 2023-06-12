import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;
  Color BgColor, TextColor;
  double size;
   TextWidget({Key? key,
  required this.text,
    this.BgColor = Colors.black,
    required this.size,
    this.TextColor = Colors.white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
        fontSize: size,
        backgroundColor: BgColor,
        color: TextColor
    ),);
  }
}

