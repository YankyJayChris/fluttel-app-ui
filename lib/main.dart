import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/login/login.dart';


void main() async{ 
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WITHME',
      theme: ThemeData(
        primaryColor: Color(0xffFFFFFF),
        accentColor: Color(0xff813594),
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(color: Color(0xff66757F)),
      ),
      home: LoginPage(),
    );
  }
}
