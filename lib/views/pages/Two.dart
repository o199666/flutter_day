import 'package:flutter/material.dart';
import 'package:flutter_day/views/pages/two/CustomScrollViewTestRoute.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Two extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TwoState();
}

class TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('这个是标题二'),
      ),
      body: Container(
          child: Column(
            children: <Widget>[
              gestureTest
            ],
          )

      ),
    );
  }
}
Widget gestureTest = GestureDetector(
  child: Container(
    width: 300.0,
    height: 300.0,
    color:Colors.red,
  ),
  onDoubleTap: (){
    print("双击onDoubleTap");
  },
  onLongPress: (){
    print("长按onLongPress");
  },
  onLongPressUp: (){
    print("长按抬起onLongPressUP");
  },

);
