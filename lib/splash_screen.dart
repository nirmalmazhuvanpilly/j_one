import 'dart:async';

import 'package:flutter/material.dart';
import 'package:j_one/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      ),
    );
  }

  List<Color> _colors = [
    Colors.blue[900],
    Colors.blue[800],
  ];
  List<double> _stops = [0.0, 0.7];

  TextStyle _style = new TextStyle(
    color: Colors.white,
    fontSize: 50,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: _colors,
            stops: _stops,
          ),
        ),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(100),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
            ),
            child: Text(
              "J ONE",
              style: _style,
            ),
          ),
        ),
      ),
    );
  }
}
