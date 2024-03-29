import 'package:flutter/material.dart';

class Dealcard extends StatelessWidget {

  final String username;
  final String imagepath;
  final int likes;
  final int comments;
  final String avatar;
  final Color heartcolor;

  Dealcard({this.username,this.imagepath,this.likes,this.comments,this.avatar,this.heartcolor});


  @override
  Widget build(BuildContext context) {
    return Container(
      child:Padding(
        padding: EdgeInsets.all(15.0),
        child: new ClipRRect(
          borderRadius: BorderRadius.circular(24.0),
            child:Material(
              color: Colors.white,
              elevation: 24.0,
              shadowColor: Color(0x802196F3),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Color(0xff813594),
                     borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                        image: AssetImage(avatar),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text('$username', style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Text('place tag'),
                    Text('2 min ego'),
                  ],),
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Text('this is the kid i saw in the morning with my friends i took a pic of him'),
                ),
                Container(
                  // padding: EdgeInsets.only(right: 10.0, left: 10.0,),
                  child: Image.asset(imagepath, width: double.infinity,fit: BoxFit.cover,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: heartcolor == null ? Color(0xff813594) :heartcolor,
                            borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          ),
                          child: Icon(Icons.favorite, color: Colors.white),
                        ),
                        Text('$likes likes')
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          margin: EdgeInsets.all(10.0),
                          child: Icon(Icons.insert_comment, color: Color(0xffCC8317),)
                          ),
                        Text('$comments comments'),
                      ],
                    ),
                  ],
                ),
              ],
            ),),
          ),
    ),);
  }
}  