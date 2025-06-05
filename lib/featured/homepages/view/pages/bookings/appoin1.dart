import 'package:doctorappoinment/mybookings.dart';
import 'package:flutter/material.dart';

class Appoin1 extends StatelessWidget {
  const Appoin1({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Container(
            height: 400,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 197, 212, 219),
                    borderRadius: BorderRadius.circular(100)
                    
                  ),
                  child: Icon(Icons.verified_user_outlined,
                  size: 60,),
                ),
                SizedBox(height: 10,),
                Text("Congratulations!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),),
                SizedBox(
                  height: 20,
                ),
                Text("Your appointment with Dr. David Patel \n     is confirmed for June 30, 2023, at \n                         10:00 AM.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600
                ),),
                SizedBox(
                  height: 20,
                ),
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Booking1()));
                  
                },
                  child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 8, 8, 14),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Done",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),)),
                       ),
                ),
                     SizedBox(
                      height: 20,
                     ),
                     Text("Edit your appointment ")
              ],
            ),
          ),
      ],
    );
  }
}