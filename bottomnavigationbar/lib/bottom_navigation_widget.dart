import 'package:bottomnavigationbar/pages/airplay_screen.dart';
import 'package:bottomnavigationbar/pages/email_screen.dart';
import 'package:bottomnavigationbar/pages/home_screen.dart';
import 'package:bottomnavigationbar/pages/pages_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  final _bottomNavigationColor =Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list
    ..add(HomeScreen())
    ..add(EmailScreen())
    ..add(PagesScreen())
    ..add(AirplayScreen());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),),
      drawer: Drawer(),
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
           items: [
             BottomNavigationBarItem(
               icon: Icon(Icons.home,
               color: _bottomNavigationColor,),
               title: Text(
                 'Home',
                 style: TextStyle(color: _bottomNavigationColor),
               )

             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.email,
                color: _bottomNavigationColor,),
               title: Text(
                 'Email',
                 style: TextStyle( color: _bottomNavigationColor),
               )
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.pages,
                 color: _bottomNavigationColor,
               ),
               title: Text(
                 'Pages',
                 style: TextStyle(color: _bottomNavigationColor),
               )
             ),
             BottomNavigationBarItem(
                 icon: Icon(
                   Icons.airplay,
                   color: _bottomNavigationColor,
                 ),
                 title: Text(
                   'AIRPLAY',
                   style: TextStyle(color: _bottomNavigationColor),
                 )),
           ],
           currentIndex: _currentIndex,
          onTap: (int index){
             setState(() {
                _currentIndex =index;
             });
          },
          type: BottomNavigationBarType.shifting,
      ),
    );
  }


}
