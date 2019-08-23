import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
    home: new HomePage(),
));


class HomePage extends StatefulWidget{

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("News Json Fetching")
          ),
        body: ListView.builder(
          itemCount: 0,
            itemBuilder:( BuildContext context ,int index){
              return Container(
                child: Center(),
              );
            }
        ),
        );
  }
}