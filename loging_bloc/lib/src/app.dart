import 'package:flutter/material.dart';
import 'package:loging_bloc/src/blocs/provider.dart';
import 'package:loging_bloc/src/screen/LoginScreen.dart';


class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Provider(
        child: MaterialApp(
          title: "Log Me In",
          home: Scaffold(
            body: LoginScreen(),
          ),
        )
    );
  }
}