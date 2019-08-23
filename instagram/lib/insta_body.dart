import 'package:flutter/material.dart';
import 'package:instagram/insta_list.dart';


class InstaBody extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: new InstaStories()),
        Flexible(child: InstaList())
      ],
    );;
  }
}