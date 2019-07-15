import 'package:flutter/material.dart';

class CompanyCard extends StatelessWidget {

  final String username;
  final String imagepath;
  final int stars;
  final String atlocation;
  final String category;
  final Color starColor;

  CompanyCard({this.username,this.imagepath,this.stars,this.atlocation,this.category,this.starColor});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width - 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(imagepath),
                fit: BoxFit.cover,
              ),
            ),
        ),
        Positioned(
          bottom: 20.0,
          left: 20.0,
          right: 20.0,
          child: Container(
            height: 100.0,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white.withOpacity(0.95),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(username, style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                          SizedBox(height: 3.0,),
                          Text('@Nyamirambo', overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14.0),),
                        ],
                      ),
                      IconButton(icon: Icon(Icons.star_border,),iconSize: 40.0,color: Colors.yellow[700], onPressed: () {},),
                    ],
                  ),
                  Divider(height: 1.0, color: Colors.black,),
                  SizedBox(height: 5.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Text('Category: ',overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14.0),),
                        Text('$category',overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
                      ],),
                      Row(
                        children: <Widget>[
                        Icon(Icons.star_border,size: 18.0,),
                        Text(': $stars', style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
                      ],)
                    ],
                  )
                ],
              ),
            ),
          ),

        )
      ]),
    );
  }
}


