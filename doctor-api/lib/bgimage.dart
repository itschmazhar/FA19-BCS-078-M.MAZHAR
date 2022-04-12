import 'package:flutter/material.dart';

class bgImage extends StatelessWidget {
  const bgImage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:


      Scaffold(



        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:'Home',
              backgroundColor: Colors.lightBlueAccent,

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label:'Contact us',
              backgroundColor: Colors.lightBlueAccent,
            ),

          ],
        ),





      ),


    );
  }
}