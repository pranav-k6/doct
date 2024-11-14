import 'package:doctorappoinment/home.dart';
import 'package:flutter/material.dart';

class Aleart extends StatelessWidget {
  const Aleart({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Center(
          child: Container(
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
                Text("Your account is ready to use.You will \nbe redirected to the Home Page in a \n                     few seconds...",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600
                ),),
                SizedBox(
                  height: 20,
                ),
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                },
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Image(image: AssetImage("assets/Loader.png")),
                  ),
                ),

              ],
            ),
          ),
        )
      ],
    );
  }
}