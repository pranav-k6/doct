import 'package:doctorappoinment/containers.dart';
import 'package:doctorappoinment/customtexfield.dart';
import 'package:doctorappoinment/data.dart';
import 'package:doctorappoinment/droctorsdetails.dart';
import 'package:flutter/material.dart';

class doclist extends StatefulWidget {
  const doclist({super.key});

  @override
  State<doclist> createState() => _doclistState();
}

class _doclistState extends State<doclist> {

  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("All Doctors")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Customs(
              hintText: "Search doctor...",
              prefixIcon: Icon(Icons.search),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  contains(Txt: "All"),
                  SizedBox(width: 5,),
                  contains(Txt: "General"),
                  SizedBox(width: 5,),
                  contains(Txt: "Cardiologist"),
                  SizedBox(width: 5,),
                  contains(Txt: "Dentist")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "532 founds",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Text(
                        "Default",
                      ),
                      Icon(Icons.keyboard_double_arrow_down_outlined)
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  Container(
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
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorsDetails()));
                    },
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:  Image(
                          image: AssetImage(data[index].img),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Text(
                                data[index].name,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Icon(Icons.favorite_border),
                            ],
                          ),
                          Divider(thickness: 2,),
                           SizedBox(height: 5),
                           Text(
                            data[index].name1,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                           SizedBox(height: 10),
                          Row(
                            children:  [
                              Icon(Icons.location_on_outlined, size: 15),
                              
                              Text(
                                data[index].name2,
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                         Row(
                          children: [
                          Image.asset(data[index].img1),
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
                         ],)
                        ],
                      ),
                    ),
                  ],
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
      ),
    );
  }
}
