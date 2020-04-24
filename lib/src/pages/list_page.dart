import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:reto_playtec/src/pages/detail_page.dart';


class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  Future<List<User>> _getUsers() async{

    var data = await http.get("https://jsonplaceholder.typicode.com/users");

    var jsonData = json.decode(data.body);

    List<User> users = [];

    for(var u in jsonData){

      User user = User(u["id"], u["name"], u["username"], u["phone"], u["website"]);

      users.add(user);
    }


    print(users.length);

    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: GradientAppBar(

        title: Text('Lista de usuarios', style: TextStyle(fontSize: 20.0),),
        centerTitle: true,
        backgroundColorStart: Color(0xFF85DCFA),
        backgroundColorEnd: Color(0xFF2382C2),
      ),

      body: Container(

        padding: EdgeInsets.all(15.0),

        child: FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot){

            if(snapshot.data == null){

              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img/load_gift.gif")
                  ),
                ),
                child: Center(
                  child: Column( 
                    mainAxisAlignment: MainAxisAlignment.center, 
                    children: <Widget>[
                      SizedBox(height: 60.0,),
                      Text('cargando', style: GoogleFonts.nunito(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400
                      ),)
                      ],),),
              );
            }else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index){
                  return Card(

                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                    elevation: 5,
                    margin: EdgeInsets.all(9.0),
                    child: ListTile(

                        leading: Image(image: AssetImage('assets/img/user_icon.png'),),
                        title: Text(snapshot.data[index].name),
                        subtitle: Text(snapshot.data[index].website),
                        trailing: Icon(Icons.keyboard_arrow_right ),
                        onTap: (){

                          Navigator.push(context,

                            CupertinoPageRoute(builder: (context) => DetailPage(
                              snapshot.data[index]))
                          );
                        },
                    ),
                  );
                }
              );
            } 
          },
        ),
      ),
    );
  }
}

class User {

  final int id;
  final String name;
  final String username;
  final String phone;
  final String website;

  User(this.id,this.name, this.username, this.phone, this.website);
}