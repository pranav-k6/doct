import 'package:doctorappoinment/login.dart';
import 'package:doctorappoinment/featured/homepages/view/pages/splash/person3.dart';
import 'package:flutter/material.dart';

class Person2 extends StatelessWidget {
  const Person2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Container(
            height: 500,
            width: double.infinity,
            child: Image(image: AssetImage("assets/Image (2).png"),fit: BoxFit.cover,)
          ),
           SizedBox(height: 10,),
          Text("Connect with Specialists",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),),
          SizedBox(height: 10,),
          Text("Connect with Specialized Doctors Online for \n     Convenient and Comprehensive Medical\n                              Consultations",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400
          ),),
          SizedBox(height: 10,),
           InkWell(onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Person3()));
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

          // Text("Skip",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)

        ],
      ),
      
    );
  }
}