import 'package:flutter/material.dart';

class Alert1 extends StatelessWidget {
  const Alert1({super.key});

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
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 197, 212, 219),
                      borderRadius: BorderRadius.circular(100)),
                  child: Icon(
                    Icons.verified_user_outlined,
                    size: 60,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Congratulations!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Your appointment with Dr. David Patel \n    is confirmed for June 30, 2023, at \n                        10:00 AM.  ",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 8, 8, 14),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Done",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Edit your appointment ")
              ],
            ),
          ),
        )
      ],
    );
  }
}
