import 'package:flutter/material.dart';

class DealCard extends StatelessWidget {


  final String username;
  final String imagepath;
  final int likes;
  final int comments;
  final String avatar;
  final Color heartcolor;

  DealCard({this.username,this.imagepath,this.likes,this.comments,this.avatar,this.heartcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: EdgeInsets.only(top: 15.0),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                    color: Color(0xff813594),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: AssetImage(avatar),
                      fit: BoxFit.cover,
                    ),
                  ),
            ),
            SizedBox(width: 8.0,),
            Column(
              children: <Widget>[
                Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 15.0,),
                          Text('#Need house for rent',overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0,)),
                          Row(
                            children: <Widget>[
                              Text('category: ',overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0,)),
                              Text('house',overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12.0,)),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('description: ',overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0,)),
                              Text('i need a house with 2 bed room and 1 kitchen',maxLines: 2,softWrap: true,overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12.0,)),
                            ],
                          ),
                        ],
                      ),
                      
                  ],),
              ],
            ),
        ],),
      ),
    );
  }
}