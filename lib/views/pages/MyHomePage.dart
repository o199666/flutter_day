import 'package:flutter/material.dart';
import 'package:flutter_day/views/pages/Four.dart';
import 'package:flutter_day/views/pages/One.dart';
import 'package:flutter_day/views/pages/Three.dart';
import 'package:flutter_day/views/pages/Two.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 1;
  final _widgetOptions = [
    One(),
    Two(),
    Three(),
    Four(),
//    Text('Index 0: Home'),
//    Text('Index 1: Business'),
//    Text('Index 2: School'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //标题
//      appBar: AppBar(
//        title: Text('BottomNavigationBar Sample'),
//        //标题样式
//        textTheme: TextTheme(title: TextStyle(color: Colors.green)),
//        backgroundColor: Colors.redAccent,
//        ),
      //内容
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      //底部
      bottomNavigationBar: BottomNavigationBar(
        //超过4个
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('School')),
          BottomNavigationBarItem(icon: Icon(Icons.cake), title: Text('four')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
