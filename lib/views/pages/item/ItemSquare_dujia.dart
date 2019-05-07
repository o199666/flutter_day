import 'package:flutter/material.dart';

class ItemSquare_dujia extends StatelessWidget {
  var img_url;
  var number;
  var name;

  ItemSquare_dujia(String img_url, String number, String name) {
    this.img_url = img_url;
    this.number = number;
    this.name = name;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(2),
      height: 130,
      width: 190,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment.center, //指定未定位或部分定位widget的对齐方式
            children: <Widget>[
              Stack(
                //叠加布局
                children: <Widget>[
                  Positioned(
                    //定位
                    child: new ClipRect(
                        child: Image.network(
                      '$img_url',
                      fit: BoxFit.cover,
                      height: 130,
                      width: 190,
                    )),
                  ),
                  Positioned(
                    bottom: 5,
                    left: 2,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.videocam,
                          size: 14,
                          color: Colors.white,
                        ),
                        Text(
                          '$number',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
          Text(
            '$name',
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
