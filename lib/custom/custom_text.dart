import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  Color color;
  CustomText({super.key,required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return  Text(
      '$text',
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
