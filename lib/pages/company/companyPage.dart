import 'package:flutter/material.dart';

import 'CompanyCard.dart';

class CompanyPage extends StatefulWidget {

  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(right: 10.0, left: 10.0),
      child: ListView(
        children: <Widget>[
          Container(margin: EdgeInsets.only(left: 15.0), child: Text('People around', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Color(0xff66757F),),),),
         Container(
            height: 130.0,
            color: Colors.white,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,i){
                return peopleNearby();
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
         SizedBox(height: 10.0,),
         Container(margin: EdgeInsets.only(left: 15.0), child: Text('Company around', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Color(0xff66757F),),),),
         ListView(
           shrinkWrap: true,
           primary: false,
            children: <Widget>[
              CompanyCard(username: 'KIDS SHOP', imagepath:'assets/images/blackkid.jpg',stars: 35, atlocation:'nyamirambo', category: 'Business',),
              CompanyCard(username: 'Magnificat_Boutique', imagepath:'assets/images/alone.jpg',stars: 100, atlocation:'nyamirambo', category: 'Business',starColor: Colors.red),
              CompanyCard(username: 'atras', imagepath:'assets/images/indiandecolation.jpg',stars: 7, atlocation:'nyamirambo', category: 'Business',),
              CompanyCard(username: 'new_school', imagepath:'assets/images/indiandecolation2.jpg',stars: 7, atlocation:'nyamirambo', category: 'Business',starColor: Colors.red),
              CompanyCard(username: 'my_business', imagepath:'assets/images/coverlike.jpg',stars: 100, atlocation:'nyamirambo', category: 'Business',),
            ],
          ),
          
        ],
      ),
    );
  }
}


 Container peopleNearby(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 80.0,
              width: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/love1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            
            ),
            Align(
                alignment: Alignment.center,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(width: 80.0,child: Text('Fiston',overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0,))),
                  Container(width: 80.0,child: Text('graphic design',overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 10.0,))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
