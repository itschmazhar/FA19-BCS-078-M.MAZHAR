import 'package:flutter/material.dart';
import 'package:password_generator/homepage.dart';
import 'dart:async';
import 'simplepassdisplay.dart';
import 'toughpassdisplay.dart';
import 'passwordsupdatesimple.dart';


class SelectData extends StatefulWidget {
  const SelectData({key}) : super(key: key);
  @override
  _SelectDataState createState() => _SelectDataState();
}

class _SelectDataState extends State<SelectData> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SelectionPage())));
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(color: Colors.lightBlueAccent,)
          ],
        ));
  }
}



class SelectionPage extends StatefulWidget {



  @override
  State<SelectionPage> createState() => _SelectionPageState();
}


class _SelectionPageState extends State<SelectionPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("View Passwords"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LandingPage(),));
          },
          child: Icon(Icons.home),
        ),


        body: Center(
          child: Column(
            children: [
              SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: [
                      Form(child: Row(
                        children: [

                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                width: 150,
                                child: FlatButton(
                                  color: Colors.lightBlueAccent,
                                  textColor: Colors.white,
                                  child: new Text(
                                    "Only View Passwords",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  onPressed: () {

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DisplayPasswordsSimple(),));
                                  },


                                ),
                              ),
                            ),
                          ),

                        ],
                      ),

                      ),


                    ],
                  ),
                ),
              ),
              // SingleChildScrollView(
              //   child: Card(
              //     child: Column(
              //       children: [
              //         Form(child: Row(
              //           children: [
              //
              //             Expanded(
              //               child: Padding(
              //                 padding: const EdgeInsets.all(10.0),
              //                 child: Container(
              //                   height: 50,
              //                   width: 150,
              //                   child: FlatButton(
              //                     color: Colors.purple,
              //                     textColor: Colors.white,
              //                     child: new Text(
              //                       "View Strong Password",
              //                       style: TextStyle(fontSize: 25),
              //                     ),
              //                     onPressed: () {
              //
              //                       Navigator.push(
              //                           context,
              //                           MaterialPageRoute(
              //                             builder: (context) => DisplayPasswordsStrong(),));
              //                     },
              //
              //
              //                   ),
              //                 ),
              //               ),
              //             ),
              //
              //           ],
              //         ),
              //
              //         ),
              //
              //
              //       ],
              //     ),
              //   ),
              // ),
              SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: [
                      Form(child: Row(
                        children: [

                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                width: 150,
                                child: FlatButton(
                                  color: Colors.lightBlueAccent,
                                  textColor: Colors.white,
                                  child: new Text(
                                    "Edit Passwords",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  onPressed: () {

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => UpdatePasswords(),));
                                  },


                                ),
                              ),
                            ),
                          ),

                        ],
                      ),

                      ),


                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}


