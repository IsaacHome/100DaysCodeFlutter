
import 'package:flutter/material.dart';



void main(){
   runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection=Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          _buildButtonColumn(color, Icons.call, 'CALL '),
          _buildButtonColumn(color, Icons.near_me , 'ROUTE '),
          _buildButtonColumn(color, Icons.share, 'SHARE ')
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );


    return MaterialApp(
      title: "Welcome Flutter",
      home: Scaffold(
         appBar: AppBar(
           title: Text("Welcome To Flutter"),
         ),
        body:  Column(

           children: <Widget>[
             Image.asset(
                 'images/lake.jpg',
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,
             ),
             titleSection,
             buttonSection,
             textSection,
           ],
        ),
      ),

    );
  }

  Widget titleSection=Container(
     padding: EdgeInsets.all(42.0),
     child: Row(
        children: <Widget>[
           Expanded(
             child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Container(
                     padding: EdgeInsets.only(bottom: 8),
                     child: Text(
                       'Oeschinen Lake Campground',
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                       )
                     ),

                   ),
                   Text(
                     'Kandersteg, Switzerland',
                     style: TextStyle(
                       color: Colors.grey[500],
                     ),
                   ),

                 ]
               ),
             ),
            Icon(
                Icons.star,
                color: Colors.red[500],
            ),
            Text('41')
           ],
       ),

     );



   Column _buildButtonColumn(Color color, IconData icon, String label){
     return Column(
       mainAxisSize: MainAxisSize.min,
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Icon(icon,color: color,),
         Container(
           margin: const EdgeInsets.only(top: 8),
           child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color, ),
           ),
         )
       ],
     );
   }
}