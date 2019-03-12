import 'package:flutter/material.dart';
import 'package:flutter_app/listCart.dart';

class ThreePage extends StatefulWidget {
  ThreePage({Key key, this.counter}):super(key:key);
  final int counter;
  @override
  ThreePageState createState() => new ThreePageState();
}

class ThreePageState extends State<ThreePage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: () => debugPrint('pressed'),
        ),
        title:new Text('页面三不是' + widget.counter.toString())
      ),
      body:new Container(
        child: new ShoppingList(count:widget.counter),
      )
    );
  }
}