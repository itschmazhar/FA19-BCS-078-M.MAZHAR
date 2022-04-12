import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Muhammad Mazhar"),
            accountEmail: Text("FA19-BCS-o78"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                    "asset/mzr.png")
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Personal Info"),
            subtitle: Text("M.Mazhar"),

          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text("Email"),
            subtitle: Text("mazhar6542@gmail.com"),


          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Address"),
            subtitle: Text("Pakistan,Punjab,Vehari"),

          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text("Location"),
            subtitle: Text("COMSATS UNIVERSITY VEHARI"),


          ),
        ],
      ),
    );
  }
}


