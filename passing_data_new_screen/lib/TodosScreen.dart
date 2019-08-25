

import 'package:flutter/material.dart';
import 'package:passing_data_new_screen/main.dart';
import 'package:passing_data_new_screen/todo_detail.dart';

class TodosScreen extends StatelessWidget{
  final List<Todo> todos;


  TodosScreen({Key key, @required this.todos}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Todos List")
      ),
      body:ListView.builder(
         itemCount: todos.length,
        itemBuilder: (context,index){
           return ListTile(
             title: Text(todos[index].title),
             onTap: (){
               Navigator.push(context,
                 MaterialPageRoute(
                    builder:(context) =>  DetailScreen(todo:todos[index])

                 )
               );
             } ,
           );
        },
      ) ,
    );
  }
}