import 'package:flutter/material.dart';

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
      body: Center(
        child: Text('我是界面二'),
      ),
    );
  }
}
