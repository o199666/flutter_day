import 'package:flutter/material.dart';
class Item_Type extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return     Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                //阴影
                BoxShadow(offset: Offset(2.0, 2.0), blurRadius: 10)
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
                      Icon(Icons.equalizer, color: Colors.green),
                      Text('排行')
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.dashboard, color: Colors.green),
                      Text('分类歌单')
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.nature, color: Colors.green),
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
          )),
    );
  }

}