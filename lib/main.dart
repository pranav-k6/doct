
import 'package:doctorappoinment/aleart.dart';
import 'package:doctorappoinment/alert1.dart';
import 'package:doctorappoinment/appoinment.dart';
import 'package:doctorappoinment/apponmentalert.dart';
import 'package:doctorappoinment/code.dart';
import 'package:doctorappoinment/doctorslist.dart';
import 'package:doctorappoinment/droctorsdetails.dart';
import 'package:doctorappoinment/favalert.dart';
import 'package:doctorappoinment/favorite.dart';
import 'package:doctorappoinment/home.dart';
import 'package:doctorappoinment/hospital.dart';
import 'package:doctorappoinment/lastpro.dart';
import 'package:doctorappoinment/login.dart';
import 'package:doctorappoinment/mybookings.dart';
import 'package:doctorappoinment/navigation.dart';
import 'package:doctorappoinment/newpass.dart';
import 'package:doctorappoinment/password.dart';
import 'package:doctorappoinment/password1.dart';
import 'package:doctorappoinment/person1.dart';
import 'package:doctorappoinment/person3.dart';
import 'package:doctorappoinment/profile.dart';
import 'package:doctorappoinment/spalash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Person1(),
    );
  }
}

