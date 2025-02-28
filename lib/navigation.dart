import 'package:doctorappoinment/favorite.dart';
import 'package:doctorappoinment/home.dart';
import 'package:doctorappoinment/lastpro.dart';
import 'package:doctorappoinment/mybookings.dart';
import 'package:flutter/material.dart';

class navigationbar extends StatefulWidget {
  const navigationbar({super.key});

  @override
  State<navigationbar> createState() => _navigationbarState();
}

class _navigationbarState extends State<navigationbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            icon: Icon(Icons.home_outlined),
            iconSize: 30,
          ),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Booking1()));
              },
              icon: Icon(Icons.calendar_month_outlined),
              iconSize: 30),

              // IconButton(onPressed: (){
              //   Navigator.push(context, MaterialPageRoute(builder: (context)=>));
              // }, icon:Icon(Icons.location_on_rounded)),
               IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Favorite1()));
              },
              icon: Icon(Icons.favorite_border),
              iconSize: 30),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile1()));
              },
              icon: Icon(Icons.person_2_outlined),
              iconSize: 30),
        ],
      ),
    );
  }
}
