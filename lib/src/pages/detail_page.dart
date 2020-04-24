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

        padding: EdgeInsets.only(left:40, top:60, right:40, bottom:50),

        child: Center(
          
          child: Column(

            children: <Widget>[

              Image.asset('assets/img/user_icon_detail.png'),

              SizedBox(height: 40.0,),

              Card(

                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(30.0),

                  child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[

                        Row(children: <Widget>[  Text("Nombre:"), Expanded(child: SizedBox(),), Text(user.name) ],),
                        SizedBox(height: 20.0,),

                        Row(children: <Widget>[  Text("Nombre de usuario:"), Expanded(child: SizedBox(),), Text(user.username)],),
                        SizedBox(height: 20.0,),

                        Row(children: <Widget>[  Text("Teléfono:"), Expanded(child: SizedBox(),), Text(user.phone) ],),
                        SizedBox(height: 20.0,),
                        
                        Row(children: <Widget>[  Text("Sitio Web:"), Expanded(child: SizedBox(),), Text(user.website) ],),
                      ],
                  )
                ), 
              )
            ],
          ),
        ),
      ),
    );
  }
}