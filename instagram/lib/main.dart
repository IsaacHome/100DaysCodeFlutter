import 'package:flutter/material.dart';
import 'package:instagram/insta_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         title: "Instagram",
         debugShowCheckedModeBanner: false,
         theme: ThemeData(
            primaryColor: Colors.black,
            primaryIconTheme:IconThemeData(color: Colors.black),
            primaryTextTheme: TextTheme( title: TextStyle(color: Colors.black,fontFamily: "Aveny")),
             textTheme: TextTheme(title: TextStyle(color: Colors.black))
         ),
         home: InstaHome(),

    );
  }
}
