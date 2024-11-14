import 'package:flutter/material.dart';

class Model {
  final String name;
  final String img;
  final String name1;
  final String name2;
  final String img1;
  Model({required this.name,required this.img,required this.name1,required this.name2,required this.img1});
}
List<Model>data=[
  Model(name: "Dr. David Patel", img: "assets/Image (17).png", name1: "Cardiologist", name2: "Cardiology Center, USA", img1: "assets/Frame 1000000955.png"),
    Model(name: "Dr. Jessica Turner", img: "assets/Image (19).png", name1: "Gynecologist", name2: "Women's Clinic,Seatle,USA ", img1: "assets/Frame 1000000955.png"),
     Model(name: "Dr. Michael Johnson", img: "assets/Image (18).png", name1: "Orthopedic Surgery", name2: "Maple Associates, NY,USA", img1: "assets/Frame 1000000955.png"),
      Model(name: "Dr. Emily Walker", img: "assets/Image (20).png", name1: "Pediatrics", name2: "Serenity Pediatrics Clinic", img1: "assets/Frame 1000000955.png"),

];
