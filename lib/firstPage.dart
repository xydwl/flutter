import 'package:flutter/material.dart';
import 'package:flutter_app/listCart.dart';
import './components/eventBus.dart';

void fromFist() {
  eventBus.fire(new Event('inputText'));
}
class FirstPage extends StatefulWidget {
  FirstPage({Key key, this.counter}):super(key:key);
  final int counter;
  @override
  FirstPageState createState() => new FirstPageState();
}

class FirstPageState extends State<FirstPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: () => debugPrint('pressed'),
        ),
        title:new Text('页面一不是' + widget.counter.toString()),
        actions: <Widget>[
          new RaisedButton(
            child: Text("To兄弟"),
            onPressed: fromFist,
            textTheme: ButtonTextTheme.normal,
            textColor: Colors.white,
            disabledTextColor: Colors.red,
            color: Color(0xFF82B1FF),
            disabledColor: Colors.grey,
            highlightColor: Colors.grey,
            // 按下的背景色
            splashColor: Colors.green,
            // 水波纹颜色
            colorBrightness: Brightness.light,
            // 主题
            elevation: 10,
            highlightElevation: 10,
            disabledElevation: 10,
            padding: EdgeInsets.all(5),
            // RaisedButton 才起效
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(
                color: Color(0xFFFFF00F), style: BorderStyle.solid, width: 2)),
            clipBehavior: Clip.antiAlias,
            materialTapTargetSize: MaterialTapTargetSize.padded,
            animationDuration: Duration(seconds: 1),
          )
        ],
      ),
      body:new Container(
        child: new ShoppingList(count:widget.counter),
      )
    );
  }
}