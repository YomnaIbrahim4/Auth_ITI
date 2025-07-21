import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hintWord;
  IconData preIconData;
  bool isObsecured;
  IconData? suffIconData;


  CustomTextField({super.key,required this.hintWord,required this.preIconData,
  this.isObsecured = false, this.suffIconData});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      textAlign: TextAlign.right,
      obscureText: isObsecured,
      decoration: InputDecoration(
        hintText: hintWord ,
        prefixIcon: Icon(preIconData),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        suffixIcon: Icon(suffIconData)
      ),
    );
  }
}
