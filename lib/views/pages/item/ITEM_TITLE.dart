import 'package:flutter/material.dart';

/// 这是，一个标题，加一个图标。多次出现。
class ITEM_TITLE extends StatelessWidget {
var title_name;

ITEM_TITLE(String titleName){
  this.title_name=titleName;
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 20,bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            '$title_name',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500,letterSpacing:6 ),
          ),
          Icon(Icons.keyboard_arrow_right),
        ],
      ),
    );
  }
}
