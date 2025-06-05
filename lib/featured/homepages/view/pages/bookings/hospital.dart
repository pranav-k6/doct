import 'package:flutter/material.dart';

class Hospital extends StatelessWidget {
  const Hospital({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            height: 320,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
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
                Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage("assets/Image.png"),
                  fit: BoxFit.cover,
                  )
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sunrise Health Clinic"),
                       Row(
                              children:  [
                                Icon(Icons.location_on_outlined, size: 16),
                                SizedBox(width: 5),
                                Text(
                                  "123 Oak Street, CA 98765",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                           Row(
                            children: [
                              Text("5"),
                              SizedBox(width: 5,),
                              Image.asset("assets/Frame 1000000955.png"),
                              SizedBox(width: 5,),
                              Image.asset("assets/Frame 1000000955.png"),
                              SizedBox(width: 5,),
                              Image.asset("assets/Frame 1000000955.png"),
                              SizedBox(width: 5,),
                              Image.asset("assets/Frame 1000000955.png"),
                              SizedBox(width: 5,),
                              Text("(128 Reviews)")
                            ],
                           ),
                           Divider(
                            thickness: 2,
                           ),
                           Row(
                            children: [
                              Icon(Icons.route_outlined),
                              Text("2.5 km/40min"),
                              SizedBox(width: 120,),
                              Icon(Icons.local_hospital),
                              Text("Hospital")
                  
                            ],
                           )
                    ],
                  ),
                )
              ],
            ),
                    
                    ),
          );
        },),
      )
    );
  }
}