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
  int _selectedIndex = 1;//声明选择的默认下标。1
  final _widgetOptions = [//body集合，类是与Fragment
    One(),
    Two(),
    Three(),
    Four(),
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
        //根据选择的_selectedIndex 切换不同的页面
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      //底部
      bottomNavigationBar: BottomNavigationBar(
        //todo:超过4个要设置这个属性。
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.music_video), title: Text('音乐')),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie), title: Text('视频')),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account), title: Text('联系人')),
          BottomNavigationBarItem(icon: Icon(Icons.camera), title: Text('朋友圈')),
        ],
        currentIndex: _selectedIndex,//当前点击的Index值，
        fixedColor: Colors.blue,//点击后的颜色
        onTap: _onItemTapped,//监听
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
