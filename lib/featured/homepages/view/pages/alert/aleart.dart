
import 'package:doctorappoinment/home.dart';
import 'package:flutter/material.dart';

class Aleart extends StatefulWidget {
  const Aleart({super.key});

  @override
  State<Aleart> createState() => _AleartState();
}

class _AleartState extends State<Aleart> {
  @override
  void initState() {
    super.initState();
    // Automatically navigate after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

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
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 197, 212, 219),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Icon(
                    Icons.verified_user_outlined,
                    size: 60,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Congratulations!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Your account is ready to use. You will \nbe redirected to the Home Page in a \n                     few seconds...",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
