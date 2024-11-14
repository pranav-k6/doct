// // import 'package:doctorappoinment/containers.dart';
// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

// class Appointment extends StatefulWidget {
//   const Appointment({super.key});

//   @override
//   _AppointmentState createState() => _AppointmentState();
// }

// class _AppointmentState extends State<Appointment> {
//   // Define variables for the calendar's selected dates
//   DateTime focusedDay = DateTime.now();
//   DateTime selectedDay = DateTime.now();
//   final DateTime firstDay = DateTime(2000); // Set the first available day
//   final DateTime lastDay = DateTime(2100);  // Set the last available day

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(child: Text("Book Appointment")),
//       ),
//       body: Column(
//         children: [
//           // Date Picker Button
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: InkWell(
//               onTap: () {
//                 _showCalendarDialog(context);
//               },
//               child: const Text(
//                 "Select Date",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),

//           // Display the selected date
//           Text(
//             "Selected Date: ${selectedDay.toLocal().toString().split(' ')[0]}",
//             style: const TextStyle(fontSize: 16),
//           ),
//         ],
//       ),
//     );
//   }

//   // Function to show the calendar in a dialog
//   void _showCalendarDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         content: TableCalendar(
//           focusedDay: focusedDay,
//           firstDay: firstDay,
//           lastDay: lastDay,
//           selectedDayPredicate: (day) => isSameDay(selectedDay, day),
//           onDaySelected: (selected, focused) {
//             setState(() {
//               selectedDay = selected;
//               focusedDay = focused;
//             });
//             Navigator.pop(context); // Close the dialog after selection
//           },
//           calendarStyle: const CalendarStyle(
//             todayDecoration: BoxDecoration(
//               color: Colors.blueAccent,
//               shape: BoxShape.circle,
//             ),
//             selectedDecoration: BoxDecoration(
//               color: Colors.green,
//               shape: BoxShape.circle,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:doctorappoinment/appoin1.dart';
// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

// class Appointment extends StatefulWidget {
//   const Appointment({super.key});

//   @override
//   _AppointmentState createState() => _AppointmentState();
// }

// class _AppointmentState extends State<Appointment> {
  
//   DateTime focusedDay = DateTime.now();
//   DateTime selectedDay = DateTime.now();
//   final DateTime firstDay = DateTime(2000);
//   final DateTime lastDay = DateTime(2100);




//   Future<void>alertbox11()async{
//     return showDialog(context: context, 
//     builder: (BuildContext context){
//       return Appoin1();
//     }
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(child: Text("Book Appointment")),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
           
//             InkWell(
//               onTap: () => _showCalendarDialog(context),
//               child: Container(
//                 padding:  EdgeInsets.symmetric(vertical: 12, horizontal: 20),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: const Text(
//                   "Select Date",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),

            
//             Text(
//               "Selected Date: ${selectedDay.toLocal().toString().split(' ')[0]}",
//               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text("Select Hour",
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.w600
//             ),),
//             SizedBox(height: 10,),
//             Flexible(
//               child: GridView.builder(gridDelegate: 
//               SliverGridDelegateWithMaxCrossAxisExtent(
//                 maxCrossAxisExtent: 150,
//                 mainAxisExtent: 40,
//                 crossAxisSpacing: 5,
//                 mainAxisSpacing: 15,
//                 ),
//                 itemCount: 12,
//                itemBuilder: (context, index) {
//                  return Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white
//                   ),
//                   child: Center(child: Text("09:00 AM")),
//                  );
//                },),
//             ),
//             Center(
//               child: InkWell(onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Appoin1()));
//               },
//                 child: InkWell(onTap: () {
//                   alertbox11();
//                 },
//                   child: Container(
//                       height: 50,
//                       width: 300,
//                       decoration: BoxDecoration(
//                         color: const Color.fromARGB(255, 8, 8, 14),
//                         borderRadius: BorderRadius.circular(20)
//                       ),
//                       child: Center(child: Text("Confirm",
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.white
//                       ),)),
//                        ),
//                 ),
//               ),
//             ),
            
//           ],
//         ),
//       ),
//     );
//   }
//   void _showCalendarDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//           contentPadding: const EdgeInsets.all(8.0),
//           content: SizedBox(
//             height: 400, 
//             width: double.maxFinite,
//             child: TableCalendar(
//               focusedDay: focusedDay,
//               firstDay: firstDay,
//               lastDay: lastDay,
//               selectedDayPredicate: (day) => isSameDay(selectedDay, day),
//               onDaySelected: (selected, focused) {
//                 setState(() {
//                   selectedDay = selected;
//                   focusedDay = focused;
//                 });
//                 Navigator.pop(context); 
//               },
//               calendarStyle: const CalendarStyle(
//                 todayDecoration: BoxDecoration(
//                   color: Colors.blue,
//                   shape: BoxShape.circle,
//                 ),
//                 selectedDecoration: BoxDecoration(
//                   color: Colors.green,
//                   shape: BoxShape.circle,
//                 ),
//               ),
//               headerStyle: const HeaderStyle(
//                 formatButtonVisible: false, 
//                 titleCentered: true,
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:doctorappoinment/appoin1.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  DateTime focusedDay = DateTime.now();
  DateTime selectedDay = DateTime.now();
  final DateTime firstDay = DateTime(2000);
  final DateTime lastDay = DateTime(2100);

  Future<void> alertbox11() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Appoin1();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Book Appointment")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select Date",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),

            
            
            TableCalendar(
              focusedDay: focusedDay,
              firstDay: firstDay,
              lastDay: lastDay,
              selectedDayPredicate: (day) => isSameDay(selectedDay, day),
              onDaySelected: (selected, focused) {
                setState(() {
                  selectedDay = selected;
                  focusedDay = focused;
                });
              },
              calendarStyle: const CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              "Selected Date: ${selectedDay.toLocal().toString().split(' ')[0]}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),

            const Text(
              "Select Hour",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),

            Flexible(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  mainAxisExtent: 40,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 15,
                ),
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text("09:00 AM"),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            Center(
              child: InkWell(
                onTap: () {
                  alertbox11();
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 8, 8, 14),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

