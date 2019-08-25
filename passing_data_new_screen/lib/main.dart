import 'package:flutter/material.dart';
import 'package:passing_data_new_screen/TodosScreen.dart';


class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}


void main() => runApp(MaterialApp(
       title: 'Passing Data',
       home: TodosScreen(
         todos:List.generate(20,
             (i) =>
            Todo(
              'Todo $i',
              'A description of what needs to be done for Todo $i'
            )
         ),
       ),
));