import 'package:flutter/material.dart';
import 'package:flutter_day/views/pages/item/ITEM_TITLE.dart';
import 'package:flutter_day/views/pages/item/Item_DianTai.dart';
import 'package:flutter_day/views/pages/item/Item_Type.dart';

class OneCustomScrollViewTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //因为本路由没有使用Scaffold，为了让子级Widget(如Text)使用
    //Material Design 默认的样式风格,我们使用Material作为本路由的根。
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: new Column(
              children: <Widget>[
                Container(
                  height: 140,
                  color: Colors.lightBlue,
                ),
                //分类
                Item_Type(),
                //个性电台
                Item_DianTai(),
                ITEM_TITLE('为你推荐歌单'),
                Container(
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 120.0, childAspectRatio: 2.0 //宽高比为2
                        ),
                    children: <Widget>[
                      Icon(Icons.ac_unit),
                      Icon(Icons.airport_shuttle),
                      Icon(Icons.all_inclusive),
                      Icon(Icons.beach_access),
                      Icon(Icons.cake),
                      Icon(Icons.free_breakfast),
                    ],
                  ),
                ),
                ITEM_TITLE('最新专辑'),
                Container(
                  height: 100,
                  color: Colors.cyanAccent,
                ),
                ITEM_TITLE('独家内容'),
                Container(
                  height: 100,
                  color: Colors.greenAccent,
                ),

                Container(
                  height: 100,
                  color: Colors.amberAccent,
                ),
              ],
            ),
          )
          //轮播图
        ],
      ),
    );
  }
}
