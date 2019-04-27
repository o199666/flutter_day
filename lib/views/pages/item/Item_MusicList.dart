import 'package:flutter/material.dart';

class Item_MusicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Flex(
        //最外层
        direction: Axis.horizontal, //横向
        crossAxisAlignment: CrossAxisAlignment.start, //设置从头开始
        children: <Widget>[
          Expanded(
            //扩展
            flex: 5,
            child: Container(
                margin: EdgeInsetsDirectional.only(start: 10),
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          '明天的我们',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Icon(
                          Icons.music_note,
                          color: Colors.green,
                          size: 15,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.check_circle,
                          color: Colors.blue,
                          size: 14,
                        ),
                        Icon(
                          Icons.high_quality,
                          color: Colors.red,
                          size: 14,
                        ),
                        Text(
                          '明天的我们明天的我们-路南',
                          style: TextStyle(color: Colors.black45, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 60,
              child: Column(
                //这个是控制子布局的位置(Row:start-上 end-下 Column:start:左,end-右)
                crossAxisAlignment: CrossAxisAlignment.center,
                //这个是控制子组件从什么位置开始(这个是子布局的轴心位置决定) 比如:放cossAaxisAlignment:end说明在右边,那么右边的Y轴
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Icon(Icons.play_arrow)],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
