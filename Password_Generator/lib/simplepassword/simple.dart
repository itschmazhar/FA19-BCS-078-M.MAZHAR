import 'package:flutter/material.dart';
import 'simple_password_generator.dart';
import 'package:midlabtaskpocketpassworddairy/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class simplepass extends StatefulWidget {
  @override
  _simplepassState createState() => _simplepassState();
}

class _simplepassState extends State<simplepass> {
  bool _isWithLetters = true;
  bool _isWithUppercase = true;
  bool _isWithNumbers = true;
  bool _isWithSpecial = false;
  double _numberCharPassword = 8;
  String newPassword = '';
  String passwordHint = '';
  Color _color = Colors.blue;
  String isOk = '';
  TextEditingController _passwordLength = TextEditingController();
  TextEditingController _passwordHint = TextEditingController();
  final password = RandomPasswordGenerator();

  final databaseRef = FirebaseDatabase.instance.ref();




  @override
  void initState() {
    super.initState();
  }

  checkBox(String name, Function onTap, bool value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(name),
        Checkbox(value: value, onChanged: onTap),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text('Simple Password By Massab'),
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
        body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    controller: _passwordHint,
                    decoration: InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.0),
                        borderSide: new BorderSide(),
                      ),
                      filled: true,
                      fillColor: Colors.grey[300],
                      labelText: 'Enter Hint',
                      labelStyle: TextStyle(color: Colors.purple),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                FlatButton(
                    onPressed: () {
                      if (_passwordLength.text.trim().isNotEmpty)
                        _numberCharPassword =
                            double.parse(_passwordLength.text.trim());
                      passwordHint = _passwordHint.text.toString();

                      newPassword = password.randomPassword(
                          letters: _isWithLetters,
                          numbers: _isWithNumbers,
                          passwordLength: _numberCharPassword,
                          specialChar: _isWithSpecial,

                          uppercase: _isWithUppercase);

                      print(passwordHint);
                      print(newPassword);
                      // double passwordstrength =
                      //     password.checkPassword(password: newPassword);
                      // if (passwordstrength < 0.3) {
                      _color = Colors.red;
                      isOk = 'Password:';
                      // } else if (passwordstrength < 0.7) {
                      //   _color = Colors.blue;
                      //   isOk = 'This password is Good';
                      // } else {
                      //   _color = Colors.green;
                      //   isOk = 'This passsword is Strong';
                      // }
                      // DatabaseReference test = FirebaseDatabase.instance.ref().child("TestingAPP");
                      // test.set("I'm testing with ID ${newPassword}");

                      setState(() {});
                    },
                    child: Container(
                      color: Colors.purple,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Create Password',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                if (newPassword.isNotEmpty && newPassword != null)
                  Center(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            isOk,
                            style: TextStyle(color: _color, fontSize: 25),
                          ),
                        ),
                      )),
                if (newPassword.isNotEmpty && newPassword != null)
                  Center(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            newPassword,
                            style: TextStyle(color: _color, fontSize: 25),
                          ),
                        ),
                      ),
                  ),
                Center(
                  child: OutlinedButton(
                      onPressed: () {
                        insertData(newPassword,passwordHint);
                      },
                      child: Text(
                        "Store on Cloud",
                        style: TextStyle(fontSize: 20, color: Colors.purple),
                      )
                  ),
                )
              ],
            )),
      ),
    );
  }

  void insertData(String password, String hint) {
    databaseRef.child("Passwords").push().set({
      'Hint': hint,
      'Password': password,
    });
  }

}
