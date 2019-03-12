import 'package:flutter/material.dart';
import './components/eventBus.dart';
import 'package:flutter_app/listCart.dart';

void initState() {
  eventBus.on<Event>().listen((Event data)=>
    print(data)
  );
}
class SecondPage extends StatefulWidget {
  SecondPage({Key key, this.counter}):super(key:key);
  final int counter;
  @override
  SecondPageState createState() => new SecondPageState();
}

class SecondPageState extends State<SecondPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: () => debugPrint('pressed'),
        ),
        title:new Text('页面二不是' + widget.counter.toString())
      ),
      body:new Container(
        child: new ShoppingList(count:widget.counter),
      )
    );
  }
}