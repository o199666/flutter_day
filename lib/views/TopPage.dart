import 'package:flutter/material.dart';
import 'package:flutter_day/views/MyDrawer.dart';
import 'package:flutter_day/views/pages/item/Item_MusicList.dart';

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
      drawer: MyDrawer(),
      appBar: AppBar(
          elevation: 10,
          title: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Row(),
              ),
              Expanded(
                flex: 3,
                child: TabBar(
                  //指示器颜色
                  indicatorColor: Colors.white,
                  //指示器的间距
                  indicatorPadding: EdgeInsets.only(left: 40, right: 40),
                  //指示器的大小 label：指示器根据图片的大小决定，tab：指示器铺满
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 2,
                  //指示器
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.music_note),
                    ),
                    Tab(
                      icon: Icon(Icons.queue_music),
                    ),
                  ],
                  controller: _tabController,
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(),
              ),
            ],
          )),
      body: TabBarView(controller: _tabController, children: <Widget>[
        new ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.lightBlue,
                      Colors.lightBlueAccent[700]
                    ]),
                    //背景渐变
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 4.0)
                    ]),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Flex(
                    //整个横条
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Row(
                          children: <Widget>[
                            ClipOval(
                              child: Image.network(
                                'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1395765958,3377106680&fm=27&gp=0.jpg',
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              '  小杰  ',
                              style: TextStyle(color: Colors.black),
                            ),
                            Icon(
                              Icons.verified_user,
                              color: Colors.green,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: <Widget>[
                            OutlineButton(
                              onPressed: null,
                              child: Text(
                                '开通会员',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.red),
                              ),
                              color: Colors.blue,
                              borderSide: BorderSide(width: 2),
                              disabledBorderColor: Colors.red,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
            Item_MusicList(),
          ],
        ),
        //第二页
        new ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            //轮播图
            Container(
              height: 170,
              color: Colors.lightBlue,
            ),
            //分类
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              child: DecoratedBox(
                decoration: BoxDecoration(
                   color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      //阴影
                      BoxShadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 10)
                    ]),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Flex(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.account_circle, color: Colors.green),
                            Text('歌手')
                          ],
                        )),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.account_circle, color: Colors.green),
                          Text('排行')
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.account_circle, color: Colors.green),
                          Text('分类歌单')
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.account_circle, color: Colors.green),
                          Text('电台')
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.account_circle, color: Colors.green),
                          Text('一起听')
                        ],
                      ),
                    ),
                  ],
                ),
                )
              ),
            ),
            Container(
              height: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              color: Colors.deepPurpleAccent,
            ),
            Container(
              height: 100,
              color: Colors.greenAccent,
            ),
            Container(
              height: 100,
              color: Colors.red,
            ),
          ],
        ),
      ]),
    );
  }
}
