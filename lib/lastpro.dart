
import 'package:doctorappoinment/alert1.dart';
import 'package:doctorappoinment/customtexfield.dart';
import 'package:doctorappoinment/navigation.dart';
import 'package:flutter/material.dart';

class Profile1 extends StatefulWidget {
  const Profile1({super.key});

  @override
  State<Profile1> createState() => _Profile1State();
  
}

class _Profile1State extends State<Profile1> {

  Future<void>alertbox1()async{
    return showDialog(context: context, 
    builder: (BuildContext context){
      return Logoutal();
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Padding(
          padding: EdgeInsets.only(right: 30),
          child: Text("Profile"),
        )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/vector.1.png",
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Daniel Martinez",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "+123 856479683",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 100,
                      left: 250,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.edit, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(title: Text("Edit Profile"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(thickness: 1,),
              ListTile(title: Text("Favorite"),
              leading: Icon(Icons.favorite_border),
              trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(thickness: 1,),
              ListTile(title: Text("Notifications"),
              leading: Icon(Icons.notifications),
              trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(thickness: 1,),
              ListTile(title: Text("Settings"),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(thickness: 1,),
              ListTile(title: Text("Help and Support"),
              leading: Icon(Icons.help_center),
              trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(thickness: 1,),
              ListTile(title: Text("Terms and Conditions"),
              leading: Icon(Icons.shield),
              trailing: Icon(Icons.arrow_forward_ios),
              ),
              Divider(thickness: 1,),

              InkWell(onTap: () {
                alertbox1();
              },
                child: ListTile(title: Text("Log Out"),
                leading: Icon(Icons.logout),
                trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              Divider(thickness: 1,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: navigationbar(),
    );
  }
}

