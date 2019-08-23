import 'package:flutter/material.dart';
import 'package:whatapp_app/models/chat_model.dart';


class ChatScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ChatScreenState();
  }

}

class _ChatScreenState extends State<ChatScreen>{

    @override
  Widget build(BuildContext context) {
      return ListView.builder(
         itemCount: dummiesData.length,
          itemBuilder: (context,index) =>
              Column(
                children: <Widget>[
                  Divider(
                     height: 10.0,
                  ),
                  ListTile(
                     leading: CircleAvatar(
                        foregroundColor:Theme.of(context).primaryColor ,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(dummiesData[index].avatarUrl) ,
                     ),
                     title: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                          Text(
                             dummiesData[index].name,
                             style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                         Text(
                           dummiesData[index].time,
                           style: TextStyle(
                               fontSize: 14.0,
                               color: Colors.grey),
                         )
                       ],
                     ),
                     subtitle: Container(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                            dummiesData[index].message,
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey
                            ),
                        ),
                     ),
                  )
                ],
            )
      );
  }
}