import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ted 101 Demo App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Ted 101'),
    );
  }
}

class MyHomePage extends StatelessWidget{
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (title: Text(this.title), 
        ),
    body: Center(child: Image.asset("assets/smiley.jpg")
    ),
    );
  }
}

