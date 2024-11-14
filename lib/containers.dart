import 'package:flutter/material.dart';

class contains extends StatelessWidget {
  const contains({super.key, required this.Txt});

  
  final Txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(child: Text(Txt,
      style: TextStyle(
        fontWeight: FontWeight.bold
      ),),
      ),
      
    );
  }
}
