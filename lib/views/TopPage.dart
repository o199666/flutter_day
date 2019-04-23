import 'package:flutter/material.dart';

class TopPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('这是滑动tab'),
        bottom: TabBar(
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
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        new Center(child: new Text('自行车')),
        new Center(child: new Text('船')),
        new Center(child: new Text('巴士')),
      ]),
    );
  }
}
