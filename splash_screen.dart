import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snoo/signup.dart';
class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return StartState();
  }
}
class StartState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    startTimer();
  }
  startTimer () async{
    var duration = Duration(seconds:5);
    return Timer(duration,route);
  }
  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder:(context) => SignUp()
    ));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/snoologo.png'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
          ],
        ),
      ),
    );
  }
}