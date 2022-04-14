import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(KidsAPP());

class KidsAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.lightBlueAccent,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: InputPage(),
    );
  }
}
