import 'package:flutter/material.dart';

import 'productCard.dart';

class ProductPage extends StatefulWidget {

  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(right: 10.0, left: 10.0),
      child: ListView(
        children: <Widget>[
         Container(margin: EdgeInsets.only(left: 15.0), child: Text('Products around', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Color(0xff66757F),),),),
         ListView(
           shrinkWrap: true,
           primary: false,
            children: <Widget>[
              ProductCard(username: 'MTNRwanda', imagepath:'assets/images/blackkid.jpg',stars: 35, atlocation:'nyamirambo', category: 'Business',),
              ProductCard(username: 'Magnificat_Boutique', imagepath:'assets/images/alone.jpg',stars: 100, atlocation:'nyamirambo', category: 'Business',starColor: Colors.red),
              ProductCard(username: 'atras', imagepath:'assets/images/indiandecolation.jpg',stars: 7, atlocation:'nyamirambo', category: 'Business',),
              ProductCard(username: 'new_school', imagepath:'assets/images/indiandecolation2.jpg',stars: 7, atlocation:'nyamirambo', category: 'Business',starColor: Colors.red),
              ProductCard(username: 'my_business', imagepath:'assets/images/coverlike.jpg',stars: 100, atlocation:'nyamirambo', category: 'Business',),
            ],
          ),
          
        ],
      ),
    );
  }
}