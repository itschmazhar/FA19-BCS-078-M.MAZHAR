import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';


class DisplayPasswordsStrong extends StatefulWidget {
  const DisplayPasswordsStrong({key}) : super(key: key);

  @override
  State<DisplayPasswordsStrong> createState() => _DisplayPasswordsStrongState();
}

class _DisplayPasswordsStrongState extends State<DisplayPasswordsStrong> {

  final databaseRef2 = FirebaseDatabase.instance.ref().child("Strong Passwords");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('Simple Passwords'),
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
      body: FirebaseAnimatedList(query: databaseRef2,
        itemBuilder: (BuildContext context,DataSnapshot snapshot,
            Animation<double> animation,int index) {
          var x = snapshot.value;
          print (x);
          return ListTile(
            subtitle: Text(snapshot.child("Hint").value.toString()),
            title : Text(snapshot.child("Password").value.toString()),
            trailing: IconButton(
              onPressed: (){
                var keyFinder = snapshot.key;
                print(keyFinder);
              },
              icon: Icon(Icons.key),
            ),
          );
        },
      ),
    );
  }
}
