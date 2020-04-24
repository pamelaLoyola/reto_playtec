import 'package:flutter/material.dart';
import 'package:reto_playtec/src/pages/home_page.dart';
import 'package:reto_playtec/src/pages/splash_screen.dart';


void main() => runApp(RetoApp());

class RetoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Reto Play Tec',

      home: Center(
        
        child: SplashScreen(),

      )
    );
  }
}