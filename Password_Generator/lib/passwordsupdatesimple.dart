import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'homepage.dart';



class UpdatePasswords extends StatefulWidget {
  const UpdatePasswords({key}) : super(key: key);

  @override
  State<UpdatePasswords> createState() => _UpdatePasswordsState();
}

class _UpdatePasswordsState extends State<UpdatePasswords> {

  final databaseRef1 = FirebaseDatabase.instance.ref().child("Passwords");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('Edit Passwords'),
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
      body: SafeArea(
        child: FirebaseAnimatedList(query: databaseRef1,
          itemBuilder: (BuildContext context,DataSnapshot snapshot,
              Animation<double> animation,int index) {
            return ListTile(
              subtitle: Text(snapshot.child("Hint").value.toString()),
              title : Text(snapshot.child("Password").value.toString()),
              trailing: IconButton(
                onPressed: (){
                  // var key = snapshot.key;
                  // print(key);
                  updateDialog(snapshot.child("Hint").value.toString(), snapshot.child("Password").value.toString(), context, snapshot.key);
                },
                icon: Icon(Icons.edit),
              ),
            );
          },),),
    );
  }
  Future<void> updateDialog(String hint, String password, BuildContext context,var key){

    var hintController = TextEditingController(text: hint);
    var passwordController = TextEditingController(text: password);


    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Update Password"),
            content: Column(
              children: [
                TextFormField(
                  controller: hintController,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(), labelText: "Hint"),
                ),
                SizedBox(height: 5,),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: "Password"),
                ),
              ],
            ),
            actions: [
              TextButton(onPressed: () {
                UpdateDataS(hintController.text, passwordController.text , key);
                Navigator.of(context).pop();
              },
                child: Text("Update"),),
              TextButton(onPressed: () {
                Navigator.of(context).pop();
              }, child: Text("Cancel"),),
            ],
          );
    }
    );
  }
  void UpdateDataS(String hint, String password, var key) {
    Map<String, String> x = {"Hint": hint, "Password": password};
    databaseRef1.child(key).update(x);
  }
}
