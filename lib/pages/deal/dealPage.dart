import 'package:flutter/material.dart';
import 'package:withme/pages/deal/dealCard1.dart';


class DealPage extends StatefulWidget {

  _DealPageState createState() => _DealPageState();
}

class _DealPageState extends State<DealPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView(
        children: <Widget>[
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Container(margin: EdgeInsets.only(left: 15.0), child: Text('Your Deals', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Color(0xff66757F),),),),
          Container(
            height: 160.0,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,i){
                return yourDear();
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          ],),
          SizedBox(
              height: 10.0,
          ),
          Container(margin: EdgeInsets.only(left: 15.0), child: Text('Deals around', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Color(0xff66757F),),),),
          ListView(
           shrinkWrap: true,
           primary: false,
            children: <Widget>[
              DealCard(username: 'Karim', imagepath:'assets/images/blackkid.jpg',likes: 35, comments: 12, avatar: 'assets/images/blackkid.jpg',),
              DealCard(username: 'Chris', imagepath:'assets/images/alone.jpg',likes: 100, comments: 2, avatar: 'assets/images/morelight.jpg',heartcolor: Colors.red),
              DealCard(username: 'Fiston', imagepath:'assets/images/indiandecolation.jpg',likes: 7, comments: 120, avatar: 'assets/images/motobike.jpg',),
              DealCard(username: 'Fiston', imagepath:'assets/images/indiandecolation2.jpg',likes: 7, comments: 120, avatar: 'assets/images/motobike.jpg',heartcolor: Colors.red),
              DealCard(username: 'Chris', imagepath:'assets/images/coverlike.jpg',likes: 100, comments: 2, avatar: 'assets/images/takepic.jpg',),
            ],
          ),
          
        ],
      ),
    );
  }



  Container yourDear(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Material(
          elevation: 5.0,
          child:Container(
            width: 120.0,
            height: 130.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: <Widget>[
              Image.asset('assets/images/motobike.jpg',
                width: 120.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,top:5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('#water melon',overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.0,)),
                    Text('Menu: imbuto',overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12.0,)),
                    Text('12:56 PM',overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 10.0,)),
                  ],
                ),
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }


}


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         