import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reto_playtec/src/pages/list_page.dart';


class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.blue,

      body: Container(

        decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF2382C2), Color(0xFF85DCFA)])),
      
          child: Center(

            child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[

              Text('reto playtec',
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(color: Colors.white, letterSpacing: .5, fontSize: 50.0, fontWeight: FontWeight.bold)
                    )),
              SizedBox(height: 20.0),
              ButtonTheme(

                minWidth: 150.0,
                height: 40.0,
                child: 
                  RaisedButton(
                  elevation: 5.0,
                  child: Text('comenzar',
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(color: Colors.white, letterSpacing: .5, fontSize: 18.0, fontWeight: FontWeight.bold)
                  )),
                  color: Color(0xff26C6C5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  onPressed: (){

                    Navigator.push(context, CupertinoPageRoute(builder: (context) => ListPage()));
                  },
                ),
              )     

            ],
          ), 
      )));
}
}