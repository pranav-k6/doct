import 'package:doctorappoinment/containers.dart';
import 'package:flutter/material.dart';

class Logoutal extends StatelessWidget {
  const Logoutal({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Column(
          children: [
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20
                ),
                color: Colors.transparent
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Log Out"),
                  Divider(
                    thickness: 2,
                  ),
                   SizedBox(
                    height: 20,
                  ),
                  Text("Are you sure you want to log out?"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      contains(Txt: "cancle"),
                      contains(Txt: "Yes,Logout")
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        
      ],
    );
  }
}