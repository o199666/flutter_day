import 'package:flutter/material.dart';

class Three extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ThreeState();
}

class ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('我是界面三'),
      ),
    );
  }
}
