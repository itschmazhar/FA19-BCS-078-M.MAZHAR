import 'package:flutter/material.dart';
import 'package:samester_project/admin_panel.dart';
import 'package:samester_project/Teacher_panel/teacher_panel.dart';
import 'package:samester_project/contact_us.dart';
import 'package:samester_project/home.dart';
import 'student_panel.dart';
import 'package:samester_project/Teacher/Add Teacher.dart';

class contact_us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('CONTACT US'),
          backgroundColor: Colors.blue,
        ),
        drawer: Drawer(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 100.0,
              ),
              FlatButton(
                // width: 20.0,
                height: 50.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => admin_page()));
                },
                child: Text(
                  "  Admin Panel Design",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent,
                  ),
                ),
                color: Colors.blue,
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                //  minWidth: 20.0,
                height: 50.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => teacherPannel()));
                },
                child: Text(
                  "Teacher Panel Design",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent,
                  ),
                ),
                color: Colors.blue,
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                //  minWidth: 20.0,
                height: 50.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Stdlist()));
                },
                child: Text(
                  "Student Panel Design",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent,
                  ),
                ),
                color: Colors.blue,
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                // minWidth: 20.0,
                height: 50.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => contact_us()));
                },
                child: Text(
                  " Contact us",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent,
                  ),
                ),
                color: Colors.blue,
              )
            ],
          ),
        ),
        body: SafeArea(
          child: Expanded(
            child: ListView(
              children: [

                CircleAvatar(
                  child: Image.asset("images/mzr.png"),
                  backgroundColor: Colors.transparent,
                  radius: 30.0,
                ),
                Center(
                  child: Text(
                    'MUHAMMAD MAZHAR',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: 'Pacifico'),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+923088639065',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('mazhar6542@gmail.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 300.0,
                  height: 10.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),

                //TODO MUHAMMAD IMRAN
                CircleAvatar(
                  child: Image.asset("images/imran.png"),
                  backgroundColor: Colors.transparent,
                  radius: 80.0,
                ),
                Center(
                  child: Text(
                    'Muhammad Imran',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: 'Pacifico'),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+92300000000',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('muhammadimran@gmail.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 400.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),

                //TODO Sir Abdullah
                CircleAvatar(
                  child: Image.asset("images/abdullah.png"),
                  backgroundColor: Colors.transparent,
                  radius: 30.0,
                ),
                Center(
                  child: Text(
                    'Muhammad Abdullah',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: 'Pacifico'),
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+92300000000',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('abdullah@cuivehari.edu.pk.vhr',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 400.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),







              ],
            ),
          ),
        ),
      ),
    );
  }
}
