import 'package:flutter/material.dart';



void main(){
  runApp(MyFlutterApp());

}



class MyFlutterApp extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Flutter App",
        home: Scaffold(
          appBar: AppBar(title:  Text("Myfirst App Screen"),),
          body: Material(
              color: Colors.lightBlueAccent,
              child: Center(
                  child: Text(
                    'Hello Flutter',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0
                    ),
                  )
              )

          ),
        )
    );
  }
}