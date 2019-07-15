import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(6.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://ichef.bbci.co.uk/news/660/cpsprodpb/A85B/production/_104299034_tv050571340.jpg"),
              radius: 23.0,
            ),
          ),
          Container(
            margin : EdgeInsets.only(right: 10.0),
            child:CircleAvatar(
              backgroundColor: Colors.brown,
              child: Text("ST"),
              foregroundColor: Colors.white, 
            )
          )
          
        ],
        title: Text('Avatar page'),
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://ichef.bbci.co.uk/news/660/cpsprodpb/A85B/production/_104299034_tv050571340.jpg"),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        )
      ),
    );
  }
}