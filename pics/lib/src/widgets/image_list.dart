import 'package:flutter/material.dart';
import 'package:pics/src/models/image-model.dart';



class ImageList extends StatelessWidget{
   final List<ImageModel> images;

   ImageList(this.images);

   Widget build(BuildContext context) {
      return ListView.builder(
         itemCount: images.length,
        itemBuilder: (context,int index){
           return  this.buildImage(images[index]);
        },
      );
   }

  Widget buildImage(ImageModel image){
   return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      child: Column(
         children: <Widget>[
           Padding(
              child: Image.network(image.title),
              padding: EdgeInsets.only(
                bottom: 8.00
              ),
           ),
            Text(image.title),
         ],
      )

    );
  }

}