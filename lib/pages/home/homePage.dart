import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../product/productPage.dart';
import '../deal/dealPage.dart';
import '../company/companyPage.dart';
import '../moment/momentPage.dart';
import '../messages/messagesPage.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController _tabControler;
  ScrollController _scrollViewController;


   @override
  void initState() {
    super.initState();
    _tabControler = TabController(vsync: this, initialIndex: 1,length: 5);
    _scrollViewController = ScrollController();
    _tabControler.addListener(_handleTabSelection);
  }
  void _handleTabSelection() {
    setState(() {

    });
  }

  @override
  void dispose() {
    _tabControler.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
       body:NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled){
          return <Widget>[
            SliverAppBar(
              leading: Container( height: 46.0, child: Image.asset('assets/images/Mainlogopurple.png'),),
              title:  Container(
                height: 35.0,
                  margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                  decoration: BoxDecoration(
                    color: Color(0xffF0F0F0),
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Center( child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "seach...",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                              // icon: Icon(Icons.search, color:Colors.grey)
                            ),
                          ),),
                        ),
                      ),
                    ],
                  ),
                
                ),
              elevation: 0.2,
              pinned: true,
              floating: true,
              actions: <Widget>[
                IconButton(onPressed: (){}, icon: Icon(Icons.notifications, size: 25.0,color: Color(0xff66757F),),),
                IconButton(onPressed: (){}, icon: Icon(Icons.person_pin,color: Color(0xff66757F),),),
                Padding(padding: EdgeInsets.only(right: 15.0),),
              ],
              forceElevated: true,
              bottom: TabBar(
                indicatorColor: Color(0xff813594),
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.local_offer, color: _tabControler.index == 0 ? Color(0xff813594): Color(0xff66757F),),
                  ),
                   Tab(
                    icon: Icon(Icons.store, color: _tabControler.index == 1 ? Color(0xff813594): Color(0xff66757F),),
                  ),
                   Tab(
                    icon: Icon(Icons.explore, color: _tabControler.index == 2 ? Color(0xff813594): Color(0xff66757F),),
                  ),
                   Tab(
                    icon: Icon(Icons.pin_drop,color: _tabControler.index == 3 ? Color(0xff813594): Color(0xff66757F),),
                  ),
                   Tab(
                    icon: Icon(Icons.question_answer,color: _tabControler.index == 4 ? Color(0xff813594): Color(0xff66757F),),
                  ),
                ],
                controller: _tabControler,
              ),
            ),
          ];
          
        },
        body: TabBarView(
          children: <Widget>[
            ProductPage(),
            CompanyPage(),
            DealPage(),
            MomentPage(),
            MessagePage(),
          ],
          controller: _tabControler,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_box, color: Colors.white,),
        onPressed: () {
          _scrollViewController.animateTo(
            _scrollViewController.position.minScrollExtent,
            duration: Duration(milliseconds: 1000),
            curve: Curves.decelerate);
        },
      ),
    );
  }
}                   