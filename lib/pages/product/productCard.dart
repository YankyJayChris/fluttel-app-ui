import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

  final String username;
  final String imagepath;
  final int stars;
  final String atlocation;
  final String category;
  final Color starColor;

  ProductCard({this.username,this.imagepath,this.stars,this.atlocation,this.category,this.starColor});
  
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
              borderRadius: BorderRadius.circular(20.0),
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
            height: 75.0,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
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
                      Padding(
                        padding: const EdgeInsets.only(left:15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('NIKE Shoe', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                            SizedBox(height: 3.0,),
                            Text('category: #Shoes', overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14.0),),
                            Text('company: withme', overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 10.0),),
                          ],
                        ),
                      ),
                      Container(
                        height: 50.0,
                        width: 100.0,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Color(0xff813594),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text('200 Rwf', overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14.0,color: Colors.white,fontWeight: FontWeight.bold,)),
                        ),
                        ),)
                    ],
                  ),
                ],
              ),
            ),
          ),

        )
      ]),
    );
  }
}
