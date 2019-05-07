import 'package:flutter/material.dart';
//三个子列表的item
class Item_GeDan extends StatelessWidget {
  var image;
  var titlename;
  var author;
  Item_GeDan(String image, String titlename, String author) {
    this.image = image;
    this.titlename = titlename;
    this.author = author;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      //比例布局
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          //左边图片
          Expanded(
              flex: 3,
              child: Stack(
                overflow: Overflow.clip,
                children: <Widget>[
                  Positioned(
                    child: Container(
                        width: 140,
                        height: 140,
                        child: Image.network(
                          '$image',
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                      right: 10,
                      bottom: 10,
                      child: Icon(
                        Icons.play_circle_outline,
                        color: Colors.white,
                      )),
                ],
              )),
          //右边数据
          Expanded(
            flex: 5,
            child: Column(
              textDirection: TextDirection.ltr,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DecoratedBox(
                    //装饰器盒子
                    decoration: BoxDecoration(
                      //装饰器类型
                      border: Border.all(
                          //边框设置
                          color: Colors.black54),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                      child: Text(
                        "歌单",
                        style: TextStyle(color: Colors.black26),
                      ),
                    )),
                Text('$titlename',
                    style: TextStyle(color: Colors.black, fontSize: 18)),
                Text(
                  '$author',
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.headset,
                      color: Colors.black54,
                      size: 14,
                    ),
                    Text('123万'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
