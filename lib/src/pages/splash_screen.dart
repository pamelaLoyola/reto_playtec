import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:reto_playtec/src/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){

    super.initState();
    startTimer();
  }

  startTimer() async {

    var duration = Duration(seconds: 4);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, CupertinoPageRoute(
      builder: (context) => HomePage()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(

        padding: EdgeInsets.all(50.0),
        
        child: Center(
          
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Image.asset('assets/img/playtec.png'),
               Image.asset('assets/img/first_animation.gif')
            ],
          ),
          
          ),
      ),
    );
  }
}