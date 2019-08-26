import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends  StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: Text("Code Lab"),),
      body: Column(

        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.account_circle, size: 50),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Flutter McFlutter ",
                    style: Theme.of(context).textTheme.headline,),
                  Text("Experienced Developer")
                ],
              )
            ],
          ),
          SizedBox(height: 8),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("123 Main Street"),
            Text("(415) 555-0198.")
          ],),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.accessibility),
              Icon(Icons.timer),
              Icon(Icons.phone_android),
              Icon(Icons.phone_iphone),
          ],),

        ],
      )
      ,

    );
  }

}