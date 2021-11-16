// @dart=2.9

import 'dart:async';

import 'package:facedetection/main.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyApp(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.cyan, Colors.teal])),
        child: Padding(
          padding: const EdgeInsets.only(top: 130),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/face.png'),
              Text(
                "Face Detection",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              
              SizedBox(
                height: 100,
              ),
              Text(
                "From",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                "From Void Programmer",
                style: TextStyle(fontSize: 30, fontFamily: "cursive"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
