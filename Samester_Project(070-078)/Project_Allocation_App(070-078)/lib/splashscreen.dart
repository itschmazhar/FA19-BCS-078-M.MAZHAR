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
          SizedBox(
            height: 10.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Text(
            'Welcome to Project Allcoation App',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.red,
              fontFamily: "Satisfy",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          CircleAvatar(
            radius: 87,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              child: Icon(
                Icons.business,
                size: 75.0,
                color: Color(0xFFFFC83E),
              ),
              backgroundColor: Colors.white,
              radius: 82.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 10.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Text(
            'Group',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.red,
              fontFamily: "Satisfy",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
        ],
      )),
    );
  }
}
