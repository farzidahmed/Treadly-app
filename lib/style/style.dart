import 'package:flutter/material.dart';
class Style extends StatelessWidget {
   Style({super.key, required this.text,  this.fontWeight,  this.fontSize,required this.color, this.backGroundColor, });
  final String text;
   final FontWeight? fontWeight;
   final double? fontSize;
   final Color color;
   final Color? backGroundColor;

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
fontSize: 20,
      fontWeight: FontWeight.bold,

    ),
    );
  }
}

class Heading extends StatelessWidget {
  Heading({super.key, required this.data, this.fontWeight, this.fontSize, required this.color, this.backGroundColor, this.isTrue});
  final String data;
   final FontWeight? fontWeight;
   final double? fontSize;
   final Color color;
   final Color? backGroundColor;
   final bool? isTrue ;

  @override
  Widget build(BuildContext context) {
    return Text(
     data,
        style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,)
    );
  }
}

