import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new MyApp(),
));

class MyApp extends StatefulWidget{
  @override
  MyState  createState()  => new MyState();

}

class MyState extends State<MyApp>{
  bool _isCheck = false;

  void onChange(bool value){
    setState(() {
      _isCheck = value ;
    });

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Check Box Example"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(30.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
             new Row(
               children: <Widget>[
                 new Text("Click It"),
                 new Checkbox(value: _isCheck, onChanged: (bool value){onChange(value);}),
               ],
             ),
              new CheckboxListTile(
                title: new Text("Click Here"),
                  value: _isCheck,
                  onChanged: (bool value){
                    onChange(value);
                  })
            ],

          ),
        ),
      ),

    );
  }

}