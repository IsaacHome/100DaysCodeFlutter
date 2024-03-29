import 'package:flutter/material.dart';
import 'package:news/src/blocs/stories_provider.dart';
import 'package:news/src/screen/news_list.dart';

class App extends StatelessWidget{
   @override
  Widget build(BuildContext context) {

     return StoriesProvider(
        child:MaterialApp(
          title: "News",
          home: NewsList(),
        ) ,
     );
  }
}