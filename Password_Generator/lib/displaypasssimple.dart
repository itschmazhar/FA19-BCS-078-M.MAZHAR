import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';


class DisplayPasswordsSimple extends StatefulWidget {
  const DisplayPasswordsSimple({key}) : super(key: key);

  @override
  State<DisplayPasswordsSimple> createState() => _DisplayPasswordsSimpleState();
}

class _DisplayPasswordsSimpleState extends State<DisplayPasswordsSimple> {

  final databaseRef1 = FirebaseDatabase.instance.ref().child("Passwords");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('Passwords'),
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
      body: Scrollbar(
        thickness: 0,
        child: FirebaseAnimatedList(query: databaseRef1,
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
      ),
    );
  }
}
