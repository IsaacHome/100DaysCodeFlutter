import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/insta_stories.dart';

class InstaList extends StatelessWidget{

   @override
  Widget build(BuildContext context) {

     var deviceSize = MediaQuery.of(context).size;

    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index) => index ==0 ?
        SizedBox(

          child: InstaStories(),
          height: deviceSize.height * 0.15,
        )
        : Column(

          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://pbs.twimg.com/profile_images/491150645978599426/FUX9RNM2_400x400.jpeg")),
                        ),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      new Text(
                        "Isaac Home",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  new IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: null,
                  )
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child:  Image.network(
                "http://www.side3.com/wp/wp-content/uploads/2016/10/Studio-B-Side-e1476378803810.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                       Icon(
                        FontAwesomeIcons.heart,
                      ),
                       SizedBox(
                        width: 16.0,
                      ),
                       Icon(
                        FontAwesomeIcons.comment,
                      ),
                       SizedBox(
                        width: 16.0,
                      ),
                       Icon(FontAwesomeIcons.paperPlane),
                    ],
                  ),
                  new Icon(FontAwesomeIcons.bookmark)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Liked by BillyLaminAye, and 528,331 others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://avatars2.githubusercontent.com/u/31203960?s=460&v=4")),
                    ),
                  ),
                  new SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        hintText: "Add a comment...",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child:
              Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
            )
          ],
        )
    );
  }
}