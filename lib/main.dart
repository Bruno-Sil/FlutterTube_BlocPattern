import 'package:flutter/material.dart';
import 'package:fluttertube/api.dart';
import 'screen/home.dart';

void main() {
  
  Api api = Api();
  api.search("eletro");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterTube',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}