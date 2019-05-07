import 'package:flutter/material.dart';
//电台
class Item_DianTai extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return    Container(
      height: 140,
      padding: EdgeInsets.all(5),
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          //图片
          Expanded(
              flex: 2,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Positioned(
                    child: Image.network(
                      'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=249787448,1681523128&fm=27&gp=0.jpg',
                      fit: BoxFit.cover,
                      height: 140,
                    ),
                  ),
                  Positioned(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.play_arrow,
                            size: 40,
                            color: Colors.white,
                          ),
                          Text(
                            '个性电台',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )),
                ],
              )),
          Expanded(
            //右边
            flex: 4,
            child: Container(
              child: Column(
                //上下
                children: <Widget>[
                  Container(
                    //上
                    color: Colors.white70,
                    margin: EdgeInsets.all(1),
                    padding: EdgeInsets.only(left: 10),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '新歌新碟',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18),
                                ),
                                Text(
                                  '“元气少年”，不期而遇',
                                  style:
                                  TextStyle(color: Colors.black38),
                                ),
                              ],
                            )),
                        Expanded(
                            flex: 1,
                            child: Image.network(
                              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556614721495&di=71950285f5c1364e908b2ade5549746c&imgtype=0&src=http%3A%2F%2Fimglf1.ph.126.net%2FpugDzv2Jd-tn3FAyTitYiw%3D%3D%2F16325548666908388.jpg',
                              fit: BoxFit.cover,
                              height: 62,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    //下
                    color: Colors.white70,

                    margin: EdgeInsets.all(2),
                    padding: EdgeInsets.only(left: 10),
                    child: Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '新歌新碟',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18),
                                ),
                                Text(
                                  '“元气少年”，不期而遇',
                                  style:
                                  TextStyle(color: Colors.black38),
                                ),
                              ],
                            )),
                        Expanded(
                            flex: 1,
                            child: Image.network(
                              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556614721495&di=71950285f5c1364e908b2ade5549746c&imgtype=0&src=http%3A%2F%2Fimglf1.ph.126.net%2FpugDzv2Jd-tn3FAyTitYiw%3D%3D%2F16325548666908388.jpg',
                              fit: BoxFit.cover,
                              height: 62,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}