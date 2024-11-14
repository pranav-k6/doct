import 'package:doctorappoinment/appoinment.dart';
import 'package:flutter/material.dart';

// class Droctorsdetails extends StatelessWidget {
//   const Droctorsdetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text("Doctor Details")),
//         actions: [
//           Icon(Icons.favorite_border_outlined),
//         ],

//       ),

//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Container(
//               height: 150,
//               width: 400,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(.1),
//                       spreadRadius: 5,
//                       blurRadius: 5,
//                     ),
//                   ]),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         height: 120,
//                         width: 120,
//                         child: Image(image: AssetImage("assets/Image (17).png")),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10, bottom: 50),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   "Dr. David Patel",
//                                   style: TextStyle(
//                                       fontSize: 20, fontWeight: FontWeight.w600),
//                                 ),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Icon(Icons.favorite_border),
//                               ],
//                             ),

//                             // Text("Cardiologist",
//                             // style: TextStyle(
//                             //   fontSize: 14,
//                             //   fontWeight: FontWeight.w600
//                             // ),),
//                             //  Row(
//                             //   children: [
//                             //     Icon(Icons.location_on_outlined),
//                             //   ],
//                             //  )
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

class DoctorsDetails extends StatelessWidget {
  const DoctorsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Doctor Details")),
        actions: const [
          Icon(Icons.favorite_border_outlined),
          SizedBox(width: 10), 
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:  Image(
                          image: AssetImage("assets/Image (17).png"),
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
                                  "Dr. David Patel",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                 Icon(Icons.favorite_border),
                              ],
                            ),
                             Divider(thickness: 2),
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
                              children:  [
                                Icon(Icons.location_on_outlined, size: 16),
                                SizedBox(width: 5),
                                Text(
                                  "New York, USA",
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
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Column(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.people),
                    ),
                    Text("2,000+"),
                    Text("patients")
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.bookmark_add),),
                      Text("10+"),
                      Text("experience"),
                  ],
                ),
                 Column(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.star_purple500_outlined),),
                      Text("5"),
                      Text("rating"),
                  ],
                ),
                 Column(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.insert_comment_sharp),),
                      Text("1,872"),
                      Text("reviews"),
                  ],
                ),
                  
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About me",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),),
                    SizedBox(height: 20,),
                    Text("Dr. David Patel, a dedicated cardiologist, brings a wealth of experience to Golden Gate Cardiology Center in Golden Gate, CA. view more"),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Working Time",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                    ),),
                    Text("Monday-Friday, 08.00 AM-18.00 pM"),
                    SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Reviews",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                        ),),
                        Text("See All")
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                      width: 400,
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Image(image: AssetImage("assets/Frame 1000000981.png"),
                            fit: BoxFit.cover,),
                           ),
                           SizedBox(width: 10,),
                           Column(mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Emily Anderson",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                              ),),
                              Row(
                                children: [
                                  Text("5.0"),
                                  SizedBox(width: 5,),
                                  Image.asset("assets/Frame 1000000955.png"),
                                  SizedBox(width: 5,),
                                  Image.asset("assets/Frame 1000000955.png"),
                                  SizedBox(width: 5,),
                                  Image.asset("assets/Frame 1000000955.png"),
                                  SizedBox(width: 5,),
                                  Image.asset("assets/Frame 1000000955.png")
                                ],
                              ),
                            ],
                           ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Text("Dr. Patel is a true professional who genuinely cares about his patients. I highly recommend Dr. Patel to anyone seeking exceptional cardiac care.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                    SizedBox(height: 20,),
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Appointment()));
                    },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:  Color.fromARGB(255, 8, 8, 14),
                        ),
                        child: Center(
                          child: Text("Book Appointment",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
