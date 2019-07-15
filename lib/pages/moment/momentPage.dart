import 'package:flutter/material.dart';

import 'momentCard.dart';

class MomentPage extends StatefulWidget {

  _MomentPageState createState() => _MomentPageState();
}

class _MomentPageState extends State<MomentPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(right: 10.0, left: 10.0),
      child: ListView(
        children: <Widget>[
         Container(margin: EdgeInsets.only(left: 15.0), child: Text('Moments around', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Color(0xff66757F),),),),
         ListView(
           shrinkWrap: true,
           primary: false,
            children: <Widget>[
              MomentCard(username: 'Karim', imagepath:'assets/images/blackkid.jpg',likes: 35, comments: 12, avatar: 'assets/images/blackkid.jpg',),
              MomentCard(username: 'Chris', imagepath:'assets/images/alone.jpg',likes: 100, comments: 2, avatar: 'assets/images/morelight.jpg',heartcolor: Colors.red),
              MomentCard(username: 'Fiston', imagepath:'assets/images/indiandecolation.jpg',likes: 7, comments: 120, avatar: 'assets/images/motobike.jpg',),
              MomentCard(username: 'Fiston', imagepath:'assets/images/indiandecolation2.jpg',likes: 7, comments: 120, avatar: 'assets/images/motobike.jpg',heartcolor: Colors.red),
              MomentCard(username: 'Chris', imagepath:'assets/images/coverlike.jpg',likes: 100, comments: 2, avatar: 'assets/images/takepic.jpg',),
            ],
          ),
          
        ],
      ),
    );
  }
}