import 'dart:async';
import 'package:flutter/material.dart';
import 'package:samester_project/home.dart';
import 'package:samester_project/login.dart';
import 'package:samester_project/login_option.dart';
//import 'package:project_allocation_app/home.dart';
//import 'package:project_allocation_app/Account_Home.dart';
import 'package:samester_project/up_retrieve.dart';
import 'package:samester_project/retrieve_pdf.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen(), //ret_pdf(), //HomeScreen(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Text(
            'Project Allcoation App',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
              fontFamily: "Satisfy",
            ),
            textAlign: TextAlign.center,
          ),


          CircleAvatar(
            radius:70.0,
            child: ClipRRect(
              child: Image.asset('assets/comsats.png'),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),


          Text("Loading.....",
              textAlign: TextAlign.center,

            style: TextStyle(
              fontSize: 30.0,
              color: Colors.green,
              fontFamily: "Satisfy",
            ),

          ),
          CircularProgressIndicator(
            
            color: Colors.lightBlueAccent,
          )

        ],
      )),
    );
  }
}
