import 'package:doctorappoinment/login.dart';
import 'package:doctorappoinment/person2.dart';
import 'package:flutter/material.dart';

class Person1 extends StatelessWidget {
  const Person1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              width: MediaQuery.sizeOf(context).width,
              child: Image(
                image: AssetImage("assets/Image (1).png"),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Meet Doctors Online",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Connect with Specialized Doctors Online for \n     Convenient and Comprehensive Medical\n                              Consultations",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Person2()));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 8, 8, 14),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  "NEXT",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
            },
                child: Text(
              "Skip",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            )),
          ],
        ),
      ),
    );
  }
}
