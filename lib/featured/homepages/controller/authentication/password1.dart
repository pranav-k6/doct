import 'package:doctorappoinment/code.dart';
import 'package:doctorappoinment/customtexfield.dart';
import 'package:flutter/material.dart';

class Password1 extends StatelessWidget {
  const Password1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Container(
                    width: 100,
                    height: 100,
                    child: Image(image: AssetImage("assets/Vector (1).png")),
                  ),
            ),
             Text("HealthPal",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Forget Password ?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Enter your Email, we will send you a verification\n                                     code."),
                  SizedBox(
                    height: 20,
                  ),
                  Customs(hintText: "Your Mail",
                  prefixIcon: Icon(Icons.mail),),
                  SizedBox(
                    height: 30,
                  ),

                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Code()));
                  },
                    child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      color:  Color.fromARGB(255, 8, 8, 14),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text("Send Code",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),),
                    ),
                                    ),
                  ),
          ],
        ),
      ),
    );
  }
}