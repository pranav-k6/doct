import 'package:flutter/material.dart';

class Customs extends StatelessWidget {
   Customs({super.key, required this.hintText,this.prefixIcon,this.suffixIcon});

  final String hintText;
  final Widget?prefixIcon;
  final Widget?suffixIcon;
  

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),

    );
  }
}