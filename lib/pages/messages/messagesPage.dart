import 'package:flutter/material.dart';


import '../../models/chat_model.dart';

class MessagePage extends StatefulWidget {

  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: true,
       itemCount: dummyData.length,
       itemBuilder: (context,i) => Column(
         children: <Widget>[
           Divider(height: 10.0,),
           ListTile(
             leading: CircleAvatar(
               foregroundColor: Theme.of(context).primaryColor,
               backgroundColor: Colors.grey,
               backgroundImage: AssetImage(dummyData[i].avatarurl),
             ),
             title: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Text(dummyData[i].name, style:TextStyle(fontWeight: FontWeight.bold)),
                 Text(dummyData[i].time, style:TextStyle(fontSize: 14.0, color: Colors.grey)),
               ],
             ),
             subtitle: Container(
               padding: EdgeInsets.only(top: 5.0),
               child: Text(
                 dummyData[i].message, 
                 style:TextStyle(fontSize: 15.0, color: Colors.grey
               ),
               ),
             ),
           ),
         ],
       ),               
     );
  }
}