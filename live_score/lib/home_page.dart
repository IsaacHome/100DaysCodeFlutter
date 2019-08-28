import 'package:flutter/material.dart';
import 'package:live_score/screen/date_calendar.dart';
import 'package:live_score/screen/day_five_screen.dart';
import 'package:live_score/screen/day_four_screen.dart';
import 'package:live_score/screen/day_one_screen.dart';
import 'package:live_score/screen/day_three_screen.dart';
import 'package:live_score/screen/day_two_screen.dart';
import 'package:live_score/screen/live_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  with SingleTickerProviderStateMixin {

  TabController _tabController ;

  int _currentIndex =0;
  List<Widget> bottomNavigationList = List();



  @override
  void initState() {
    super.initState();
    _tabController=TabController(vsync:this,initialIndex: 0,length: 7 );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drawer(),
       appBar: AppBar(
         title: Text(
             "Football",
             style: TextStyle(
               fontSize: 19.0
             ),
         ),
         bottom: TabBar(
           controller: _tabController,
           isScrollable: true,
           tabs: <Widget>[


             Tab(
               icon: Icon(Icons.timer),
               text: "Live",
             ),
             Tab(
               icon: Text("MON"),
               child: Text("26 AUG",
                 style: TextStyle(fontSize: 11.0,color: Colors.white)
                 ,),
             ),
             Tab(
               icon: Text("TUE"),
               child: Text("27 AUG",
               style: TextStyle(fontSize: 11.0,color: Colors.white),),
             ),
             Tab(
               icon: Text("TUE"),
               child: Text("28 AUG",
                 style: TextStyle(fontSize: 11.0,color: Colors.white),),

             ),
             Tab(
               icon: Text("THU"),
               child: Text("29 AUG",
                 style: TextStyle(fontSize: 11.0,color: Colors.white),),

             ),
             Tab(
               icon: Text("FRI"),
               child: Text("30 AUG",
               style: TextStyle(fontSize: 11.0,color: Colors.white),),

             ),
             Tab(
               icon: Icon(Icons.calendar_today),
               child: Text("Date",
                 style: TextStyle(fontSize: 11.0,color: Colors.white),),
             ),
           ],
         ),
       ),
      body: TabBarView(

        controller: _tabController,
        children: <Widget>[
           LiveScreen(),
           DayOneScreen(),
           DayTwoScreen(),
           DayThreeScreen(),
           DayFourScreen(),
           DayFiveScreen(),
           DateCalendarScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items:[
           BottomNavigationBarItem(
             icon: Icon(Icons.score,
             color: Colors.white,),
             title: Text("Scores",style: TextStyle(fontSize: 11.0),)
           ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border,
              color: Colors.white,),
            title: Text("Favourite" ,style: TextStyle(fontSize: 11.0),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore,
              color: Colors.white,),
            title: Text("Explore",style: TextStyle(fontSize: 11.0),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message,
              color: Colors.white,),
            title: Text("News",style: TextStyle(fontSize: 11.0),)
          )
        ] ,
        currentIndex: _currentIndex,
        onTap: (int index){
           setState(() {
              _currentIndex =index;
           });
        },
        selectedItemColor:Colors.orange,
        type: BottomNavigationBarType.fixed,

      ),
    );
  }
}

