import 'package:flutter/material.dart';
import 'package:password_generator/view.dart';
import 'dart:async';
import 'image.dart';
import 'strongpassword/strong.dart';
import 'simplepassword/simple.dart';


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
            context, MaterialPageRoute(builder: (context) => LandingPage())));
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('asset/img.png'), height: 400),
            Text("Loading.....", style: TextStyle(fontSize: 25)),
            SizedBox(
              height: 5,
            ),
            CircularProgressIndicator(color: Colors.green,)
          ],
        ));
  }
}



class LandingPage extends StatefulWidget {



  @override
  State<LandingPage> createState() => _LandingPageState();
}


class _LandingPageState extends State<LandingPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Password Generator"),
          centerTitle: true,
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

       // drawer: MyDrawer(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: bgImage(),
            ),
            SingleChildScrollView(
              child: Card(
                child: Column(
                  children: [
                    Form(child: Row(
                      children: [


                             FlatButton(
                              color: Colors.lightBlueAccent,
                              textColor: Colors.white,
                              child: new Text(
                                "Simple Password",
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: () {

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => simplepass(),));
                              },


                            ),

                      ],
                    ),

                    ),


                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Card(
                child: Column(
                  children: [
                    Form(child: Row(
                      children: [


                              FlatButton(
                                color: Colors.lightBlueAccent,
                                textColor: Colors.white,
                                child: new Text(
                                  "ToughPassword",
                                  style: TextStyle(fontSize: 20),
                                ),
                                onPressed: () {

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => strongpass(),));
                                },


                              ),

                      ],
                    ),

                    ),


                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Card(
                child: Column(
                  children: [
                    Form(child: Row(
                      children: [
                         FlatButton(
                                color: Colors.lightBlueAccent,
                                textColor: Colors.white,
                                child: new Text(
                                  "View Passwords",
                                  style: TextStyle(fontSize: 20),
                                ),
                                onPressed: () {

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SelectData(),));
                                },


                              ),


                      ],
                    ),

                    ),


                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}


