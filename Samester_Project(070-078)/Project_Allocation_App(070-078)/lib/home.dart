import 'package:flutter/material.dart';
import 'package:samester_project/admin_panel.dart';
import 'package:samester_project/Teacher_panel/teacher_panel.dart';
import 'package:samester_project/contact_us.dart';
import 'student_panel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlueAccent,
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        onTap: () => {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                        )
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => admin_page())),
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.person_add,
                              color: Colors.white,
                            ),
                            Text(
                              'Admin',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => admin_page())),
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.history,
                              color: Colors.white,
                            ),
                            Text(
                              'History',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => contact_us())),
                        },
                        child:

                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Icon(


                              Icons.person_outline,
                              color: Colors.white,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
        backgroundColor: Theme.of(context).buttonColor,
        // drawer: NavDrawer(),
        appBar: AppBar(
          title: Text('HOME'),
          centerTitle: true,
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
                    color: Colors.orangeAccent,
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
                    color: Colors.orangeAccent,
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
                    color: Colors.orangeAccent,
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
                    color: Colors.orangeAccent,
                  ),
                ),
                color: Colors.blue,
              )
            ],
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: BorderSide(color: Colors.red)
              ),
              minWidth: 70.0,
              height: 70.0,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => admin_page()));
              },
              child: Text(
                "Admin Panel Design",

                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              color: Colors.lightBlueAccent,
            ),
            SizedBox(
              height: 50.0,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: BorderSide(color: Colors.red)
              ),
              minWidth: 70.0,
              height: 70.0,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => teacherPannel()));
              },
              child: Text(
                "Teacher Panel Design",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              color: Colors.lightBlueAccent,
            ),
            SizedBox(
              height: 50.0,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: BorderSide(color: Colors.red)
              ),
              minWidth: 70.0,
              height: 70.0,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Stdlist()));
              },
              child: Text(
                "Student Panel Design",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              color: Colors.lightBlueAccent,
            ),
            SizedBox(
              height: 50.0,


            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: BorderSide(color: Colors.red)
              ),
              padding: EdgeInsets.all(0),
              //materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minWidth: 70.0,
              height: 70.0,

              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => contact_us()));
              },
              child: Text(
                "Contact us",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              color: Colors.lightBlueAccent,
            ),


          ],

        ),

      ),

    );

  }

}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 29 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 60);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 15 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}


