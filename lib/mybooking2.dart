// import 'package:doctorappoinment/containers.dart';
// import 'package:flutter/material.dart';

// class Completed extends StatelessWidget {
//   const Completed({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(left: 50),
//         child: Container(
//               height: 230,
//               width: 400,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     spreadRadius: 5,
//                     blurRadius: 5,
//                   ),
//                 ],
//               ),
//               child: Column(
//                 children: [
//                   Center(
//                       child: Padding(
//                     padding: const EdgeInsets.only(top: 5),
//                     child: Text(
//                       "May 22, 2023 - 10.00 AM",
//                       style: TextStyle(fontWeight: FontWeight.w600),
//                     ),
//                   )),
//                   Divider(
//                     thickness: 2,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           height: 100,
//                           width: 100,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Image(
//                             image: AssetImage("assets/Image (21).png"),
//                             fit: BoxFit.scaleDown,
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text(
//                                     "Dr. James Robinson",
//                                     style: TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 "Orthopedic Surgery",
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                               SizedBox(height: 10),
//                               Row(
//                                 children: [
//                                   Icon(Icons.location_on_outlined, size: 16),
//                                   SizedBox(width: 5),
//                                   Text(
//                                     "Elite Ortho Clinic, USA",
//                                     style: TextStyle(fontSize: 12),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Divider(
//                     thickness: 2,
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       contains(Txt: "Re-Book"),
//                       contains(Txt: "Add Review")
//                     ],
//                   )
//                 ],
//               ),
//             ),
//       ),
//     );
//   }
// }

import 'package:doctorappoinment/containers.dart';
import 'package:flutter/material.dart';

class Completed extends StatelessWidget {
  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Container(
            height: 230,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Date Header
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
                  child: Center(
                    child: Text(
                      "May 22, 2023 - 10.00 AM",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const Divider(thickness: 1, height: 16),
                
                // Doctor Info Section
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Doctor Image
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/Image (21).png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      
                      // Doctor Details
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Doctor Name
                            const Text(
                              "Dr. James Robinson",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 8),
                            
                            Text(
                              "Orthopedic Surgery",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined, 
                                    size: 16, 
                                    color: Colors.grey[600]),
                                const SizedBox(width: 4),
                                Text(
                                  "Elite Ortho Clinic, USA",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 1, height: 5),
      
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      contains(Txt: "Re-Book"),
                      contains(Txt: "Add Review"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}