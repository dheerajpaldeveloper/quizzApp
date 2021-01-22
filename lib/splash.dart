import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/home.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo,

      body: Container(
        decoration: BoxDecoration(
            color: new Color(0xff622F74),
            gradient: LinearGradient(
                colors: [new Color(0xff6094e8), new Color(0xffde5cbc)])),
        child: Center(
          child: Text(
            "Quiz App\nTest Your Knowledge !!",
            style: TextStyle(
              fontSize: 50.0,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
