import 'package:flutter/material.dart';

class TopPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> with SingleTickerProviderStateMixin {
  //Tab页的控制器，可以用来定义Tab标签和内容页的坐标
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //生命周期方法插入渲染树时调用，只调用一次

  void initState() {
    super.initState();
    //初始化控制器
    _tabController = TabController(
        length: 4, //Tab页的个数
        vsync: this //动画效果的异步处理，默认格式;
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: TabBar(
          //指示器颜色
          indicatorColor: Colors.deepPurple,
          //指示器的间距
          indicatorPadding: EdgeInsets.only(left: 40, right: 40),
          //指示器的大小 label：指示器根据图片的大小决定，tab：指示器铺满
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 2,
          //指示器
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.directions_bike),
            ),
            Tab(
//            text: '列表',
              icon: Icon(Icons.directions_boat),
            ),
            Tab(
              icon: Icon(Icons.directions_bus),
            ),
            Tab(
              icon: Icon(Icons.accessibility_new),
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        new Center(child: new Text('自行车')),
        new Center(child: new Text('船')),
        new Center(child: new Text('巴士')),
        new Center(child: new Text('ASD')),
      ]),
    );
  }
}
