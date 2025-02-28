import 'package:doctorappoinment/login.dart';
import 'package:flutter/material.dart';

class Person3 extends StatelessWidget {
  const Person3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              child: Image(image: AssetImage("assets/Image (3).png"),fit: BoxFit.cover,)
            ),
             SizedBox(height: 10,),
            Text("Thousands of Online Specialists",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 10,),
            Text("          Explore a Vast Array of Online Medical\n      Specialists, Offering an Extensive Range of \n    Expertise Tailored to Your Healthcare Needs.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400
            ),),
            SizedBox(height: 10,),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
            },
              child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 8, 8, 14),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text("NEXT",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),)),
                   ),
            ),
             SizedBox(
                height: 10,
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