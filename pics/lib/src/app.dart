import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:pics/src/models/image-model.dart';
import 'package:pics/src/widgets/image_list.dart';

class App extends StatefulWidget{


  @override
  State createState() {
      return AppState();
  }
}
class AppState extends State<App>{

  List<ImageModel> images=[];
  int counter = 0;
  
  void fetchImage() async{
    counter++;
     var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');

     var imageModel = ImageModel.fromJson(json.decode(response.body));

     setState(() {
          images.add(imageModel);
     });

  }

  @override
  Widget build( context) {

    return MaterialApp(
        home: Scaffold(
          body: ImageList(images),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed:fetchImage,

          ),
          appBar: AppBar(
            title: Text('Lets see Some Images !'),
          ),
        )
    );


  }
}