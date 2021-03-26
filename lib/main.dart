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
      home: MyHomePage(title: 'Ted 101 Product Layout Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget{
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  //user defined function
  void _showDialog(BuildContext context) {
    //flutter defined function 
    showDialog(
    context: context, builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text("Message"),
        content: new Text("Ted103 Test Log Success"),
        actions: <Widget>[
          new FlatButton(
            child: new Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text(this.title),),
    body: Center(
      child: GestureDetector(
        onTap: () {
          _showDialog(context);
        },
        child: Text("Ted103 Test Log")
      )
    )
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image})
    :super(key: key);
    final String name;
    final String description;
    final int price;
    final String image;

    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(2), height: 120, child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget> [
              Image.asset("assets/appimages/" + image), Expanded(
                child: Container(
                  padding: EdgeInsets.all(5), child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(this.name, style: TextStyle(fontWeight: 
                          FontWeight.bold)), Text(this.description),
                        Text("Price:" + this.price.toString()),
                      ],
                  )
                ))
            ]
          )
        ) 
      );
  }   
}