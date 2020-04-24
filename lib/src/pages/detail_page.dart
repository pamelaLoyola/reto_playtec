import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:reto_playtec/src/pages/list_page.dart';

class DetailPage extends StatelessWidget {

  final User user;
    
  DetailPage(this.user);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: GradientAppBar(

        title: Text('Detalle de usuario', style: TextStyle(fontSize: 20.0),),
        centerTitle: true,
        backgroundColorStart: Color(0xFF85DCFA),
        backgroundColorEnd: Color(0xFF2382C2),
      ),

      body: Container(
        
        child: Column(

          children: <Widget>[

            Text(user.name),
            Text(user.username),
            Text(user.phone),
            Text(user.website),
          ],
        ),)
    );
  }
}