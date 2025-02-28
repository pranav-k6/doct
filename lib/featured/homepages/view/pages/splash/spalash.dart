import 'dart:async';

import 'package:doctorappoinment/featured/homepages/view/pages/splash/person1.dart';
import 'package:flutter/material.dart';

class Spalash extends StatefulWidget {
  const Spalash({super.key});

  @override
  State<Spalash> createState() => _SpalashState();

}
class _SpalashState extends State<Spalash> {
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 3),
      ()=> Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Person1())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          Container(
            height: MediaQuery.sizeOf(context).height,
            width:MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/Splash.png"),
              fit: BoxFit.cover),
            ),
          )
    );
  }
}