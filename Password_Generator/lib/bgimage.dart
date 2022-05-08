import 'package:flutter/material.dart';

class bgImage extends StatelessWidget {
  const bgImage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "asset/locker1.png",
      height: 130,
      //fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.0),
      colorBlendMode: BlendMode.darken,
    );
  }
}