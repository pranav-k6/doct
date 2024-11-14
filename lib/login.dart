import 'package:doctorappoinment/password.dart';
import 'package:doctorappoinment/profile.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}



class _LoginState extends State<Login> {
  TextEditingController mail=TextEditingController();
  TextEditingController password=TextEditingController();
  final fkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: fkey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image(image: AssetImage("assets/Vector (1).png")),
                  ),
                  
                ),
                Text("HealthPal",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),),
                SizedBox(
                  height: 10,
                ),
                Text("Create Account",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400
                ),),
                Text("We are here to help you!",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
                ),),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Your Name",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(Icons.person)
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: mail,
                  validator: (value){
                    if(value!.contains("@")){
                      return null;
                    }
                    return "incorrect email"; 
                  },
                  autovalidateMode: AutovalidateMode.disabled,
                  decoration: InputDecoration(
                    hintText: "Your Email",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(Icons.email)
                  ),
                ),
                 SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: password,
                  validator: (value) {
                    if(value!.length<8){
                      return "enter maximum 8 charater";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(Icons.lock)
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(onTap: () {
                  if(fkey.currentState!.validate()){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                }
                },
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                    color:  Color.fromARGB(255, 8, 8, 14),
                    borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text("Create Account",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),),
                    ),
                    
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("or",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300
                ),),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 211, 206, 206),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Image(image: AssetImage("assets/Google - Original (1).png")),
                        ),
                        Text("Continue with Google")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                     color: const Color.fromARGB(255, 211, 206, 206),
                     borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Image(image: AssetImage("assets/_Facebook (1).png")),
                        ),
                        Text("Continue with Facebook")
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 40,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you have an account ? "),
                    InkWell(onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>singin()));
                    },
                      child: Text(" Sign up",
                      style: TextStyle(color: Colors.blue),),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}