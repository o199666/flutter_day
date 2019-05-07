import 'package:flutter/material.dart';

class ItemSquare extends StatelessWidget {
  var img_url;
  var number;

  ItemSquare(String img_url, String number) {
    this.img_url = img_url;
    this.number = number;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(2),
      width: 100,
      height: 100,
      child: Stack(
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
                  width: 130,
                )),
//                  child: Image.network(
//                '$img_url',
//                fit: BoxFit.fitHeight,
//              )
              ),
              Positioned(
                bottom: 5,
                left: 2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.headset,
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
              Positioned(
                right: 5,
                bottom: 5,
                child: Icon(
                  Icons.play_circle_outline,
                  color: Colors.white,
                  size: 25,
                ),
              )
            ],
          )

        ],
      ),
    );
  }
}
