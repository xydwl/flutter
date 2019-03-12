import 'package:flutter/material.dart';
import 'package:flutter_app/firstPage.dart';
import 'package:flutter_app/secondPage.dart';
import 'package:flutter_app/threePage.dart';
void main() {
  runApp(new MaterialApp(
    title: 'Flutter Tutorial',
    home: new Counter()
  ));
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => new _CounterState();
}

class _CounterState extends State<Counter> with SingleTickerProviderStateMixin{
  TabController controller;
  int _counter = 0;
  void increment() {
    setState(() {
      _counter++;
    });
  }

  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      body: new TabBarView(
        controller: controller,
        children:<Widget>[
          new FirstPage(counter:_counter),
          new SecondPage(counter:_counter),
          new ThreePage(counter:_counter)
        ]
      ),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(text: "首页", icon: new Icon(Icons.home)),
            new Tab(text: "列表", icon: new Icon(Icons.list)),
            new Tab(text: "信息", icon: new Icon(Icons.message)),
          ],
          indicatorWeight: 0.1,
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Add',
        child: new Icon(Icons.add),
        onPressed: increment,
      ),
    );
  }
} 