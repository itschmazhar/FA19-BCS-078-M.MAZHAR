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
