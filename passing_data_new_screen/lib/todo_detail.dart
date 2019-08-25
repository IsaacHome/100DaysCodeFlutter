import 'package:flutter/material.dart';
import 'package:passing_data_new_screen/main.dart';


class DetailScreen extends StatelessWidget {

  final Todo todo;

  DetailScreen({Key key, @required this.todo}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text( todo.title)
       ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(todo.description),
        ),
    );
  }
}
