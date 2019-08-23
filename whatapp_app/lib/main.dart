import 'package:flutter/material.dart';
import 'package:whatapp_app/Whatsapp_home.dart';

void main()=> runApp(MyApp());



class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp",
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(),

    );
  }
}