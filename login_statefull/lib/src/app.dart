import 'package:flutter/material.dart';
import 'screens/login_screen.dart';


class  App extends StatelessWidget{


  Widget build(context) {
    // TODO: implement build
    return MaterialApp(
         title: "Log me In",
          home: Scaffold(
            body: LoginScreen(),
      ),
    );
  }
}