import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:futurebuilder_app/model/user_model.dart' ;
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Users'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future<List<User>> _getUser()async{

     var data = await http.get("http://www.json-generator.com/api/json/get/cfzzlYHMqG?indent=3");

     var jsonData = json.decode(data.body);
     List<User> users =[];

     for( var u  in jsonData){

       User user = User(u['index'],u['name'],u['about'],u['picture'],u['gender'],u['age'],u['phone'],u['guide'],u['company']);
        users.add(user);

     }
     print(users.length);

     return users;

  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(title: Text(widget.title),),
        body: Container(
          child: FutureBuilder(
            future: _getUser(),
             builder: (BuildContext context,snapshot){
               return snapshot.data ==null ? Container(

                  child:Center( child: Text("Loading"))
               ): ListView.builder(
                 itemCount:  snapshot.data.length,
                 itemBuilder: (BuildContext context, int index){
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            snapshot.data[index].picture
                          ),
                        ),
                        title: Text(snapshot.data[index].name),
                        subtitle: Text(snapshot.data[index].phone),
                        onTap: (){
                           Navigator.push(
                             context,
                              MaterialPageRoute( builder:(context) => DetailPage(snapshot.data[index])));
                        },
                      );
                 },
               );
             },
          ),
        ),
      );
  }
}


class DetailPage extends StatelessWidget {

  final User user;

  DetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text(user.name),),
      body: Container(
        child: Column(
          children: <Widget>[
             Text(user.about)
          ],
        ),
      ),
    );
  }
}

