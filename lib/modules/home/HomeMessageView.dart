import 'package:flutter/material.dart';
import 'package:flutter_ulucu/public.dart';
import 'HomeTitleView.dart';

/// 首页消息模块
class HomeMessageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(
        top: 10,
      ),
      //height: Screen.width / 2,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Color(0x22000000), blurRadius: 8)],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: <Widget>[
          buildTitle(true, "最新消息"),
          Divider(),
          buildContent(),
        ],
      ),
    );
  }

  /// 构建内容
  Widget buildContent() {
    return Container(
        padding: EdgeInsets.fromLTRB(8,0,8,8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: Screen.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("收到新的自动巡检图片，来自门店 办公室（球机）。", style: TextStyle(fontSize: 16),),
                  SizedBox(height: 5,),
                  Text("2019-01-22 14:15:14", style: TextStyle(fontSize: 12, color: Colors.grey),)
                ],
              ),
            ),
            Container(
              width: Screen.width * 0.2,
              //margin: EdgeInsets.only(right: 2),
              child: Image.asset("img/attendance_map.png", ),
            ),
          ],
        ));
  }


}
