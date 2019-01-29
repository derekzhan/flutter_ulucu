import 'package:flutter/material.dart';

/// 构建首页模块标题
Widget buildTitle(@required bool isShowRight, @required String title) {
  Widget right = Container();
  if (isShowRight) {
    right = Container(
      margin: EdgeInsets.only(right: 10),
      child: Image.asset(
        "img/icon_user_center_allow.png",
        height: 10,
      ),
    );
  }
  return Row(
    children: <Widget>[
      Image.asset(
        "img/icon_title_logo.png",
        height: 16,
      ),
      Expanded(
        child: Container(
          margin: EdgeInsets.only(left: 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
      right
    ],
  );
}