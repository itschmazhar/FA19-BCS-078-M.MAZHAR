import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samester_project/Teacher/View_student.dart';
import 'package:samester_project/home.dart';
import 'Teacher/Add Teacher.dart';
import 'Teacher/Add_student.dart';
import 'Teacher/View_teacher.dart';
import 'package:random_string/random_string.dart';
import 'package:flutter/material.dart';
import 'package:samester_project/admin_panel.dart';
import 'package:samester_project/Teacher_panel/teacher_panel.dart';
import 'package:samester_project/contact_us.dart';
import 'student_panel.dart';

class admin_page extends StatelessWidget {
  static final String path = "lib/admin_panel/dash3.dart";
  //final String avatar = "images/.png";
  final TextStyle whiteText = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(context),




    );
  }

  // Widget _buildBottomBar() {
  //   return BottomNavigationBar(
  //     backgroundColor: Colors.red,
  //     selectedItemColor: Colors.red,
  //     unselectedItemColor: Colors.grey,
  //     currentIndex: 0,
  //     onTap: (i) {},
  //     items: [
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.home),
  //         title: Text("Home"),
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.person_add),
  //         title: Text("Refer"),
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.history),
  //         title: Text("History"),
  //       ),
  //       BottomNavigationBarItem(
  //         icon: Icon(Icons.person_outline),
  //         title: Text("Profile"),
  //       ),
  //     ],
  //   );
  // }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildHeader(),
          SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        _buildTile(
                          color: Colors.redAccent,
                          icon: Icons.add_box,
                          // title: "Test",
                          data: "Add Teacher",
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddTr()),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: FlatButton(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        _buildTile(
                          color: Colors.purple,
                          icon: Icons.preview_sharp,
                          //title: "Test",
                          data: "View Teacher",
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ViewTr()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        _buildTile(
                          color: Colors.blue,
                          icon: Icons.add_chart,
                          data: "Add Student",
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddStd()),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: FlatButton(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        _buildTile(
                          color: Colors.orange,
                          icon: Icons.streetview_outlined,
                          data: "View Student",
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ViewStd()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Stack _buildHeader() {
    return Stack(
      children: <Widget>[
        ClipPath(
         // clipper: WaveClipper2(),
          child: Container(
            child: Column(),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0x22ff3a5a), Color(0x22fe494d)])),
          ),
        ),
        ClipPath(
         // clipper: WaveClipper3(),
          child: Container(
            child: Column(),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0x44ff3a5a), Color(0x44fe494d)])),
          ),
        ),
        ClipPath(
          //clipper: WaveClipper1(),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                ListTile(
                  title: Text(
                    "Admin Dashboard",
                    style: whiteText.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  trailing: CircleAvatar(
                    child: Icon(Icons.perm_identity_sharp),
                    //backgroundColor: Colors.transparent,
                    radius: 30.0,
                  ),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Admin",
                    style: whiteText.copyWith(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Department of Computer Science, CUI Vehari",
                    style: whiteText,
                  ),
                ),
              ],
            ),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffff3a5a), Color(0xfffe494d)])),
          ),
        ),
      ],
    );
  }

  Container _buildTile({Color color, IconData icon, String data}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 100.0,
            color: Colors.white,
          ),
          Text(
            data,
            textAlign: TextAlign.center,
            style:
                whiteText.copyWith(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
