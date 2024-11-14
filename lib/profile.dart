import 'dart:js_interop';

import 'package:doctorappoinment/aleart.dart';
import 'package:doctorappoinment/customtexfield.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<String> genderOptions = ['Male', 'Female', 'Rather Not Say', 'Other'];
  String? selectedGender;

  DateTime focusedDay = DateTime.now();
  DateTime selectedDay = DateTime.now();
  final DateTime firstDay = DateTime(2000);
  final DateTime lastDay = DateTime(2100);

  
  final TextEditingController dobController = TextEditingController();
  final TextEditingController mail=TextEditingController();
  final fkey=GlobalKey<FormState>();

  Future<void> showAlertDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Aleart();
      },
    );
  }

  void showCalendarDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            height: 400,
            width: 500,
            child: TableCalendar(
              focusedDay: focusedDay,
              firstDay: firstDay,
              lastDay: lastDay,
              selectedDayPredicate: (day) => isSameDay(selectedDay, day),
              onDaySelected: (selected, focused) {
                setState(() {
                  selectedDay = selected;
                  focusedDay = focused;
                  
                  dobController.text = "${selectedDay.day}/${selectedDay.month}/${selectedDay.year}";
                });
                Navigator.pop(context); 
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
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fill Your Profile"),
      ),
      body: Form(
        key: fkey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 20,
                          left: 20,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromARGB(255, 208, 203, 203),
                            ),
                            child: const Icon(
                              Icons.person,
                              size: 100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(height: 20),
                  Customs(hintText: "Full Name"),
                   SizedBox(height: 20),
                  Customs(hintText: "Middle Name"),
                   SizedBox(height: 20),
                   TextFormField(
                    controller: mail,
                    validator: (value) {
                      if(value!.contains("@")){
                        return null;
                      }
                      return "inccorect email";
                    },
                    decoration: InputDecoration(
                      hintText: "Enter e-mail",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
        
                   ),
        
        
                  // Customs(hintText: "E-mail"),
                   SizedBox(height: 20),
        
                  TextFormField(
                    controller: dobController,
                    readOnly: true, 
                    decoration: InputDecoration(
                      hintText: "Date of Birth",
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.calendar_month),
                        onPressed: showCalendarDialog,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                   SizedBox(height: 20),
        
                  
                  DropdownButtonFormField<String>(
                    value: selectedGender,
                    decoration: InputDecoration(
                      labelText: "Gender",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: genderOptions.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },
                  ),
                   SizedBox(height: 20),
        
                
                  InkWell(
                    onTap: () {
                       if(fkey.currentState!.validate()){
                        showAlertDialog();

                       }
                    },
                    
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color:  Color.fromARGB(255, 8, 8, 14),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
