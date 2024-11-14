import 'package:doctorappoinment/containers.dart';
import 'package:doctorappoinment/home.dart';
import 'package:doctorappoinment/mybooking2.dart';
import 'package:doctorappoinment/navigation.dart';
import 'package:flutter/material.dart';

class Booking1 extends StatelessWidget {
  const Booking1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "My Bookings",
            ),
          ),
          bottom: TabBar(tabs: [
            Tab(
              text: "Upcoming",
            ),
            Tab(
              text: "Completed",
            ),
            Tab(
              text: "Canceled",
            )
          ]),
        ),

        // body: Padding(
        //   padding: const EdgeInsets.only(top: 10,left: 50),
        //   child: Container(
        //     height: 150,
        //     width: 300,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       color: Colors.amber,
        //     ),
        //     child: Column(
        //       children: [
        //         Text("May 22, 2023 - 10.00 AM"),
        //         Divider(
        //           thickness: 2,
        //         ),
        //         Row(mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Container(
        //               height: 50,
        //               width: 50,
        //               color: Colors.black,
        //               child: Image.asset("assets/Image (17).png"),

        //             ),Column(mainAxisAlignment: MainAxisAlignment.center,
        //               children: [
        //                 Text("Dr. James Robinson"),
        //                 Text("Orthopedic Surgery"),

        //               ],
        //             )
        //           ],
        //         ),
        //       ],
        //     ),

        //   ),
        // ),
        body: Padding(
          padding: const EdgeInsets.only(left: 5, top: 40),
          child: TabBarView(
            children: [
              Container(
                height: 230,
                width: 400,
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
                child: Column(
                  children: [
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        "May 22, 2023 - 10.00 AM",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    )),
                    Divider(
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image(
                              image: AssetImage("assets/Image (18).png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Dr. James Robinson",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Orthopedic Surgery",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined, size: 16),
                                    SizedBox(width: 5),
                                    Text(
                                      "Elite Ortho Clinic, USA",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        contains(Txt: "cancle"),
                        contains(Txt: "Reschedule")
                      ],
                    )
                  ],
                ),
              ),
              Completed(),
            ],
            
          ),
          
        ),
        bottomNavigationBar: navigationbar(),
      ),
    );
  }
}
