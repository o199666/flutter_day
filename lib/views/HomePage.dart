import 'package:flutter/material.dart';
import 'package:flutter_day/views/pages/One.dart';
import 'package:flutter_day/views/pages/Two.dart';
import 'package:flutter_day/views/pages/Three.dart';
import 'package:flutter_day/views/pages/Four.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //Tab页的控制器，可以用来定义Tab标签和内容页的坐标
  TabController tabcontroller;

  //生命周期方法插入渲染树时调用，只调用一次
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabcontroller = TabController(
        length: 4, //Tab页的个数
        vsync: this //动画效果的异步处理，默认格式;
        );
  }

  //生命周期方法构建Widget时调用
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: TabBarView(
        controller: tabcontroller,
        children: <Widget>[
          One(),
          Two(),
          Three(),
          Four(),
        ],
      ),
      bottomNavigationBar: Material(
        //底部整体颜色
        color: Colors.white,
        child: TabBar(
          controller: tabcontroller,
          tabs: <Widget>[
            Tab(
              text: '首页',
              icon: Icon(Icons.home),
            ),
            Tab(
              text: '列表',
              icon: Icon(Icons.library_books),
            ),
            Tab(
              text: '咨询',
              icon: Icon(Icons.group),
            ),
            Tab(
              text: '我的',
              icon: Icon(Icons.school),
            ),
          ],
          //tab被选中时的颜色，设置之后选中的时候，icon和text都会变色
          labelColor: Colors.blue,
          //tab未被选中时的颜色，设置之后选中的时候，icon和text都会变色
          unselectedLabelColor: Colors.black,
        ),
      ),
    );
  }

  //组件即将销毁时调用
  @override
  void dispose() {
    // TODO: implement dispose
    tabcontroller.dispose(); //释放内存，节省开销
    super.dispose();
  }
}
