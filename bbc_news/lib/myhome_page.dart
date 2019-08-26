import 'package:bbc_news/pages/live_screen.dart';
import 'package:bbc_news/pages/my_news_screen.dart';
import 'package:bbc_news/pages/popular_screen.dart';
import 'package:bbc_news/pages/top_stories_screen.dart';
import 'package:bbc_news/pages/video_screen.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {

    super.initState();
    _tabController =TabController(vsync: this,initialIndex: 1,length: 5);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("BBC News"),
        elevation: 0.7,
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              child: Text("Top Stories",
               style: TextStyle(fontSize: 18.0,color: Colors.white),),),
            Tab( child: Text("Video",
              style: TextStyle(fontSize: 18.0,color: Colors.white),),),
            Tab( child: Text("My News",
            style: TextStyle(fontSize: 18.0,color: Colors.white),),),
            Tab( child: Text("Popular",
            style: TextStyle(fontSize: 18.0,color: Colors.white),),),
            Tab( child: Text("LIVE",
            style: TextStyle(fontSize: 18.0,color: Colors.white),),),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          TopStoriesPage(),
          VideoPage(),
          MyNewsPage(),
          PopularPage(),
          LIVEPage()

        ],
      ),
    );
  }
}
