import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
double screenHeight =0;
double screenWidth =0;
Color primary = Color.fromARGB(255, 201, 92, 20);;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of (context).size.height;
    screenWidth = MediaQuery.of (context).size.width;
  
    return  Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight/2.5,
            width: screenWidth,
            decoration : BoxDecoration(
              color: primary,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(65),
              ),
            ),
            child: Center(
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: screenWidth/5,
                ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(
              top: screenHeight /15,
              bottom: screenHeight /20
            ),
            child: Text( 
            "Login" , 
            style: TextStyle(
             fontFamily:"NexaBold",
             fontSize: screenWidth /18,
            ),
           ),
          ),
          Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.symmetric(
            horizontal: screenWidth /12
          ),
          child: Column(
            children: [
              Text(
                "Student ID",
                 style: TextStyle(
                  fontFamily:"NexaBold",
                  fontSize: screenWidth /18, 
                 ),
                ),
                Container(
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    
                  ),
                )
            ],
          ),
          ),
        ],
      ),
    );
  }
}