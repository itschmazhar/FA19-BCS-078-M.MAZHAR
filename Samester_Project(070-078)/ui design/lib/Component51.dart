import 'package:flutter/material.dart';

class Component51 extends StatelessWidget {
  Component51({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
            child: Text(
          'Next',
          style: TextStyle(
            fontFamily: 'Segoe UI',
            fontSize: 20,
            color: const Color(0xfff6e5f5),
          ),
          textAlign: TextAlign.center,
          softWrap: false,
        )),
      ],
    );
  }
}
