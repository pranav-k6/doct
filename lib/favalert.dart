import 'package:doctorappoinment/containers.dart';
import 'package:flutter/material.dart';

class Favalert extends StatelessWidget {
  const Favalert({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 260,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Remove from Favorites?",
                      style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w600),),
                      Divider(thickness: 2,),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                                  height: 150,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        spreadRadius: 5,
                                        blurRadius: 5,
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 120,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                           ),
                                          child: const Image(
                                            image:
                                                AssetImage("assets/Image (17).png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    "Dr. David Patel",
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                  const Icon(Icons.favorite_border),
                                                ],
                                              ),
                                              Divider(
                                                thickness: 2,
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                "Cardiologist",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Icon(Icons.location_on_outlined,
                                                      size: 16),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    "Cardiology Center, USA",
                                                    style: TextStyle(fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Image.asset(
                                                      "assets/Frame 1000000955.png"),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text("5"),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text("|"),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text("1,872 Reviews")
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    contains(Txt: "cancel"),
                                    contains(Txt: "yes,remove")
                                  ],
                                )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}