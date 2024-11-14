import 'package:doctorappoinment/containers.dart';
import 'package:doctorappoinment/customtexfield.dart';
import 'package:doctorappoinment/droctorsdetails.dart';
import 'package:doctorappoinment/favalert.dart';
import 'package:doctorappoinment/hospital.dart';
import 'package:doctorappoinment/navigation.dart';
import 'package:flutter/material.dart';

class Favorite1 extends StatefulWidget {
  const Favorite1({super.key});

  @override
  State<Favorite1> createState() => _Favorite1State();
}

class _Favorite1State extends State<Favorite1> {

   Future<void>alertbox2()async{
    return showDialog(context: context, 
    builder: (BuildContext context){
      return Favalert();
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Favorite",
          style: TextStyle(fontSize: 16,
          fontWeight: FontWeight.w400),)),
          bottom: TabBar(
            tabs: [
            Tab(
              text: "Favorite",
            ),
            Tab( text: "Hospital",)
          ],),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBarView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Favalert()));
                            },
                              child: InkWell(onTap: () {
                                alertbox2();
                              },
                                child: Container(
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
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Hospital(),
            ],
          ),
        ),
         bottomNavigationBar: navigationbar(),
      ),
    );
  }
}
