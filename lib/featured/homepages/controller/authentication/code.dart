import 'package:doctorappoinment/newpass.dart';
import 'package:flutter/material.dart';

class Code extends StatelessWidget {
  const Code({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Container(
                        width: 100,
                        height: 100,
                        child: Image(image: AssetImage("assets/Vector (1).png")),
                      ),
                       Text("HealthPal",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),),
                      SizedBox(
                        height: 30,
                      ),
                       Text("Verify Code",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  Text("                       Enter the the code \n    we just sent you on your registered Email"),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber
                          ),
                        ),
                         Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber
                          ),
                        ),
                         Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber
                          ),
                        ),
                         Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                   InkWell(onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Newpass()));
                   },
                     child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                        color:  Color.fromARGB(255, 8, 8, 14),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text("Verify",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                        ),),
                      ),
                                      ),
                   ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Didn’t get the Code? "),
                                        Text("Resend ",
                                        style: TextStyle(
                                          color: Colors.blue
                                        ),)
                                      ],
                                    )

            ],
          ),
        ),
      ),
    );
  }
}