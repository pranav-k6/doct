import 'package:doctorappoinment/customtexfield.dart';
import 'package:doctorappoinment/password1.dart';
import 'package:flutter/material.dart';

class singin extends StatelessWidget {
  const singin({super.key});

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
                SizedBox(height: 10,),
                Text("Hi, Welcome Back! ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 10,),
                Text("Hope you’re doing fine.",
                style: TextStyle(fontSize: 11),),
                SizedBox(height: 20,),
                
                Customs(hintText: "Your E-mail",
                prefixIcon: Icon(Icons.mail),),
                SizedBox(
                  height: 20,
                ),
                Customs(hintText: "Password",
                prefixIcon: Icon(Icons.lock),),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    color:  Color.fromARGB(255, 8, 8, 14),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text("Sign In",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                    ),),
                  ),
                ),
                SizedBox(height: 20,),
                Text("or"),
                SizedBox(
                  height: 20,
                ),
                Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 211, 206, 206),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Image(image: AssetImage("assets/Google - Original (1).png")),
                      ),
                      Text("Continue with Google")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                   color: const Color.fromARGB(255, 211, 206, 206),
                   borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Image(image: AssetImage("assets/_Facebook (1).png")),
                      ),
                      Text("Continue with Facebook")
                    ],
                  ),
                ),
              ),SizedBox(
                height: 20,
              ),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Password1()));
              },
                child: Text("Forgot password ?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue
                ),),
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Do you have an account ?"),
                  Text("Sign up",
                  style: TextStyle(color: Colors.blue),)
                ],
              )
          ],
        ),
      ),
    );
  }
}