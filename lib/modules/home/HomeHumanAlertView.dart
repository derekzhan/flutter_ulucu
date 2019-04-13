import 'package:flutter/material.dart';
import 'HomeTitleView.dart';
import 'package:flutter_ulucu/public.dart';

/// 首页人形报警
class HomeHumanAlertView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(
        top: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Color(0x22000000), blurRadius: 8)],
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: <Widget>[
          buildTitle(false, "最新人形报警"),
          buildContent(),
          Divider(),
          buildFooter(),
        ],
      ),
    );
  }

  /// 构建内容
  Widget buildContent() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "昨日报警",
            style: TextStyle(fontSize: 21, color: Colors.grey),
          ),
          SizedBox(
            width: 10,
          ),
          Text("0", style: TextStyle(fontSize: 21, color: UColor.secondary)),
        ],
      ),
    );
  }

  /// 构建底部
  Widget buildFooter() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("暂无内容",style: TextStyle(fontSize: 20, color: Colors.grey))
        ],
      ),
    );
  }
}
