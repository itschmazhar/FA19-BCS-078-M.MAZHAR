

import 'package:flutter/material.dart';
void main() {
  runApp(Bmi_calculator());
}
class Bmi_calculator extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
body: Column(
  children:<Widget> [
    Expanded(child:Row(
    children:<Widget> [
      Expanded(child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(12.0)
        ),
      )),

      Expanded(child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(12.0)
        ),
      )),
    ],
) ),
    Expanded(child: Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(12.0)
      ),
    )),

    Expanded(child:Row(
      children: <Widget>[
        Expanded(child:Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(12.0)
          ),
        ) ),
        Expanded(child:Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(12.0)
          ),
        ) ),
      ],
    ) )
  ],
),
    );
  }
}
