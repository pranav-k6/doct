import 'package:doctorappoinment/customtexfield.dart';
import 'package:flutter/material.dart';

class Newpass extends StatelessWidget {
  const Newpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image(image: AssetImage("assets/Vector (1).png")),
              ),
              Text(
                "HealthPal",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Create new password",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                  "Your new password must be different form \n               previously used password"),
              SizedBox(
                height: 20,
              ),
              Customs(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
              ),
              SizedBox(
                height: 20,
              ),
              Customs(
                hintText: "Confirm Password",
                prefixIcon: Icon(Icons.lock),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Newpass()));
                },
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 8, 8, 14),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Reset Password",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
