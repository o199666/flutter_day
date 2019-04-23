import 'package:flutter/material.dart';
import 'package:flutter_day/views/HomePage.dart';
import 'package:flutter_day/views/TopPage.dart';
class One extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OneState();
}

class OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: TopPage(),
    );
  }
}
