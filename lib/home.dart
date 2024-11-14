import 'package:doctorappoinment/customtexfield.dart';
import 'package:doctorappoinment/doctorslist.dart';
import 'package:doctorappoinment/navigation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Location",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          Icon(
            Icons.notifications,
            size: 40,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Customs(
                hintText: "Search doctors",
                prefixIcon: Icon(Icons.search),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/Image (4).png"),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 120, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Looking for    \nSpecialist Doctors?",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "     Schedule an appointment with \n      our top doctors.",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>doclist()));
                    },
                      child: Text(
                        "See All",
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/Image (5).png")),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/Image (6).png")),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/Image (7).png")),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/Image (8).png")),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dentistry",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Cardiolo..",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Pulmono....",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "General",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/Image (9).png")),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/Image (10).png")),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/Image (11).png")),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/Image (12).png")),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Neurology",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Gastroen....",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Laborato.",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Vaccinat..",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nearby Medical Centers"),
                    Text("See All"),
                  ],
                  
                ),
              ),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 235,
                      child:Column(
                        children: [
                          Container(
                            height: 120,
                            width: 235,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              
                            ),
                            child: Image(image: AssetImage("assets/Image (13).png")),
                          ),
                          SizedBox(height: 10,),
                          Text("Sunrise Health Clinic")
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 235,
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            width: 235,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image(image: AssetImage("assets/1409.png")),
                          ),SizedBox(
                            height: 10,
                          ),
                          Text("Golden Cardiology Center")
                        ],
                      ),
                    
                
                    )
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: navigationbar(),
    );
  }
}
