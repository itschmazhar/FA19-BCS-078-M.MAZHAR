import 'package:flutter/material.dart';
import 'package:mazharweatherapp/screen0.dart';
import 'package:mazharweatherapp/screen2.dart';
import 'screen1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen0(),
      routes: {
        '/1': (context) => Screen1(),
        '/2': (context) => Screen2(),
      },
    );
  }
}