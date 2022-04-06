import 'package:flutter/material.dart';
import 'bgimage.dart';
import 'drawer.dart';
import 'main.dart';
import 'homepage.dart';

class contactus extends StatefulWidget {
  const contactus({key}) : super(key: key);

  @override
  State<contactus> createState() => _contactusState();
}

class _contactusState extends State<contactus> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Quiz"),

        ),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {



            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),));
          },
          child: Icon(Icons.home),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80.0,
                backgroundColor: Colors.teal,
                backgroundImage: AssetImage('asset/mzr.png'),
              ),
              Text(
                'Muhammad Mazhr',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,

                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FA19-BCS-078',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.lightBlue,

                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.lightBlue,
                  ),
                  title: Text(
                    '+920000000000',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,

                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.lightBlue,
                  ),
                  title: Text(
                    'mazhar6542@gmail.com',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,

                    ),
                  ),
                  onTap: () {},
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),

              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}