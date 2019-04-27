import 'package:flutter/material.dart';
import 'package:flutter_day/views/pages/Four.dart';
import 'package:flutter_day/views/pages/One.dart';
import 'package:flutter_day/views/pages/Three.dart';
import 'package:flutter_day/views/pages/Two.dart';

class MyBottomNavigation extends StatefulWidget {
  MyBottomNavigation({Key key}) : super(key: key);

  @override
  _MyBottomNavigationState createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
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
          BottomNavigationBarItem(icon: Icon(Icons.music_video), title: Text('音乐')),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie), title: Text('视频')),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account), title: Text('联系人')),
          BottomNavigationBarItem(icon: Icon(Icons.supervisor_account), title: Text('朋友圈')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
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
