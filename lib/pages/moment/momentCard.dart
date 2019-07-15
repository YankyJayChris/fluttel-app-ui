import 'package:flutter/material.dart';

class MomentCard extends StatelessWidget {

  final String username;
  final String imagepath;
  final int likes;
  final int comments;
  final String avatar;
  final Color heartcolor;

  MomentCard({this.username,this.imagepath,this.likes,this.comments,this.avatar,this.heartcolor});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
            child:Material(
              color: Colors.white,
              elevation: 24.0,
              shadowColor: Color(0x802196F3),
            child: Column(
              children: <Widget>[
               
                Stack(
                  children: <Widget>[
                    
                    
                    Container(
                      // padding: EdgeInsets.only(right: 10.0, left: 10.0,),
                      child: Image.asset(imagepath, width: double.infinity,fit: BoxFit.cover,),
                    ),
                    
                  ],
                ),
                 Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(5.0),
                          child: Text('this is the kid i saw in the morning with my friends i took a pic of him'),
                      ),
                      Container(
                        color: Colors.white,
                        child: ListTile(
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
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('$username', style: TextStyle(fontWeight: FontWeight.bold),),
                              Icon(Icons.more_vert, color: Color(0xff66757F),),
                            ],
                          ),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                            Text('place tag'),
                            Text('2 min ego'),
                          ],),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),),
          ),
    );
  }
}