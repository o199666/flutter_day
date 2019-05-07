import 'package:flutter/material.dart';
import 'package:flutter_day/views/pages/item/ITEM_TITLE.dart';
import 'package:flutter_day/views/pages/item/ItemSquare.dart';
import 'package:flutter_day/views/pages/item/ItemSquare_dujia.dart';
import 'package:flutter_day/views/pages/item/ItemSquare_text.dart';
import 'package:flutter_day/views/pages/item/Item_DianTai.dart';
import 'package:flutter_day/views/pages/item/Item_GeDan.dart';
import 'package:flutter_day/views/pages/item/Item_Type.dart';
import 'package:flutter_day/views/MyDrawer.dart';
import 'package:flutter_day/views/pages/item/Item_MusicList.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
            //容器，比例摆放，
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Row(),
              ),
              Expanded(
                //这个是为了 让俩中间的导航不至于太过分散
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
                //这个是为了 让俩中间的导航不至于太过分散
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
                          //样式
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
        new SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              //轮播图
              Container(
                  height: 140,
                  color: Colors.lightBlue,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3300305952,1328708913&fm=27&gp=0.jpg',
                        fit: BoxFit.fill,
                      );
                    },
                    //数据条数
                    itemCount: 10,
                    pagination: SwiperPagination(),
                    //指示器
                    controller: SwiperController(),
                    //控制按钮
                    control: SwiperControl(size: 0),
                  )),
              //分类
              Item_Type(),
              //个性电台
              Item_DianTai(),
              ITEM_TITLE('为你推荐歌单'),
              Container(
                  child: Column(
                children: <Widget>[
                  GridView(
                    //在 GridView 添加 physics: new NeverScrollableScrollPhysics()解决不滚动问题；
                    //在GridView 添加shrinkWrap:true即可解决报错问题；
                    physics: new NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, //横轴三个子widget
                        childAspectRatio: 1.0 //宽高比为1时，子widget
                        ),
                    children: <Widget>[
                      ItemSquare(
                          'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=262390006,3802864157&fm=27&gp=0.jpg',
                          '1234万'),
                      ItemSquare(
                          'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2090691376,2296073105&fm=27&gp=0.jpg',
                          '12,234万'),
                      ItemSquare(
                          'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2247953983,486106381&fm=26&gp=0.jpg',
                          '9,77万'),
                      ItemSquare(
                          'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2679956458,2260393058&fm=26&gp=0.jpg',
                          '46,123万'),
                      ItemSquare(
                          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3472568494,2647774798&fm=26&gp=0.jpg',
                          '863,679万'),
                      ItemSquare(
                          'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3331037431,630346627&fm=26&gp=0.jpg',
                          '1,288万'),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    width: 130,
                    child: OutlineButton(
                      onPressed: null,
                      color: Colors.cyan,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        textDirection: TextDirection.ltr,
                        children: <Widget>[
                          Icon(
                            Icons.rotate_right,
                            color: Colors.black,
                          ),
                          Text(
                            '换一批',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
              ITEM_TITLE('最新专辑'),
              Container(
                child: GridView(
                  //在 GridView 添加 physics: new NeverScrollableScrollPhysics()解决不滚动问题；
                  //在GridView 添加shrinkWrap:true即可解决报错问题；
                  physics: new NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, //横轴三个子widget
                      childAspectRatio: 0.8 //宽高比为1时，子widget //宽高比例
                      ),
                  children: <Widget>[
                    ItemSquare_text(
                        'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=262390006,3802864157&fm=27&gp=0.jpg',
                        '1234万',
                        '独家推荐'),
                    ItemSquare_text(
                        'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2090691376,2296073105&fm=27&gp=0.jpg',
                        '12,234万',
                        '水的记忆'),
                    ItemSquare_text(
                        'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2247953983,486106381&fm=26&gp=0.jpg',
                        '9,77万',
                        'Elopsers'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 0, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '独家内容',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 6),
                    ),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
              ),
              Container(
                child: GridView(
                  //在 GridView 添加 physics: new NeverScrollableScrollPhysics()解决不滚动问题；
                  //在GridView 添加shrinkWrap:true即可解决报错问题；
                  physics: new NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //横轴三个子widget
                      childAspectRatio: 1 //宽高比为1时，子widget //宽高比例
                      ),
                  children: <Widget>[
                    ItemSquare_dujia(
                        'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2548029202,3494755824&fm=27&gp=0.jpg',
                        '12,234万',
                        '乐见大牌|孟美岐巴黎街头秒变"风神"为哪般？'),
                    ItemSquare_dujia(
                        'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1380791782,2683426419&fm=27&gp=0.jpg',
                        '9,77万',
                        '人气榜，蔡徐坤抵住周深灿烈强梦攻击，'),
                  ],
                ),
              ),

              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    alignment: Alignment.center, //默认所有子布局居中
                    children: <Widget>[
                      Positioned(
                        child: Image.network(
                          'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2953424517,2592424793&fm=27&gp=0.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          child: Icon(
                        Icons.play_circle_outline,
                        color: Colors.white,
                        size: 40,
                      )),
                      Positioned(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.videocam,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              '100,330万',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        left: 10,
                        bottom: 10,
                      ),
                      Positioned(
                        child: Text(
                          '07:32',
                          style: TextStyle(color: Colors.white),
                        ),
                        right: 10,
                        bottom: 10,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '郭源潮',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Text(
                        '宋冬野',
                        style: TextStyle(color: Colors.black26, fontSize: 14),
                      )
                    ],
                  )
                ],
              )),
              Item_GeDan(
                  'https://i01piccdn.sogoucdn.com/86d728a1bc62ab48',
                  '被酒莫惊春睡重，赌书消得泼茶香，当时只道是寻常',
                  '纳兰性德'),
              Item_GeDan(
                  'https://i04piccdn.sogoucdn.com/406bbf70313551eb',
                  '曾经沧海难为水，除却巫山不是云',
                  ' 元稹'),
              Item_GeDan(
                  'https://i02piccdn.sogoucdn.com/cb347bbba0465022',
                  '忽如一夜春风来，千树万树梨花开',
                  ' 岑参'),
            ],
          ),
        ),
      ]),
    );
  }
}
