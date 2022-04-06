import 'package:mazhar_quizapp/contact.dart';
import 'package:mazhar_quizapp/main.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'drawer.dart';
import 'contact.dart';
import 'dart:async';
import 'bgimage.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('asset/mzr.png'), height: 150),
            Text("FA19-BCS-078", style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(color: Colors.amber,)
          ],
        ));
  }
}



class LoginPage extends StatefulWidget {



  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("FA19-BCS-078"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),));
          },
          child: Icon(Icons.home),
        ),

        drawer: MyDrawer(),
        body: Stack(
          fit: StackFit.expand,
          children: [
            bgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: [
                        Form(child: Row(
                          children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                            height: 40,
                            width: 100,
                            child: FlatButton(
                              color: Colors.lightBlue,
                              textColor: Colors.white,
                              child: new Text(
                                "Quiz Page",
                                style: TextStyle(fontSize: 15),
                              ),
                              onPressed: () {

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => QuizApp(),));
                              },


                        ),
                              ),
                          ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 100,
                                child: FlatButton(
                                  color: Colors.lightBlue,
                                  textColor: Colors.white,
                                  child: new Text(
                                    "Contact Me",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  onPressed: () {

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => contactus(),));
                                  },


                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 100,
                                child: FlatButton(
                                  color: Colors.lightBlue,
                                  textColor: Colors.white,
                                  child: new Text(
                                    "Contact US",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  onPressed: () {

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => contactus(),));
                                  },


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
              ),
            ),
          ],
        )
    );
  }
}


