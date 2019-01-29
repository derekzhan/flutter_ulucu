import 'package:flutter/material.dart';
import 'HomeTitleView.dart';
import 'package:flutter_ulucu/public.dart';

/// 首页在线考评
class HomeExamView extends StatelessWidget {
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
          buildTitle(false, "在线考评"),
          buildContent(),
          Divider(),
          buildFooter(),
        ],
      ),
    );
  }

  /// 构建底部
  Widget buildFooter() {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("办公室"),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      padding:
                          EdgeInsets.only(top: 2, bottom: 2, left: 5, right: 5),
                      decoration: BoxDecoration(
                        //设置背景
                        color: Colors.red,
                        //设置边界
                        border: new Border.all(
                          color: Colors.red,
                          width: 1.0,
                        ),
                        //设置边界半径
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                      ),
                      child: Text(
                        "最新考评",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "提交时间",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("2019-01-23 14:29:53", style: TextStyle(color: Colors.grey)),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Text("100", style: TextStyle(color: UColor.primary, fontSize: 25),),
                Text("分", style: TextStyle(color: UColor.primary,fontSize: 15),)
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 构建内容
  Widget buildContent() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: Screen.width * 0.4,
            padding: EdgeInsets.only(top: 10, left: 15, right: 0, bottom: 10),
            child: Column(
              children: <Widget>[
                Text(
                  "今日考评",
                  style: TextStyle(color: UColor.secondary, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "0",
                  style: TextStyle(color: UColor.secondary, fontSize: 25),
                ),
              ],
            ),
          ),
          SizedBox(width: 20,),
          Container(
            width: Screen.width * 0.4,
            padding: EdgeInsets.only(top: 10, left: 15, right: 0, bottom: 10),
            child: Column(
              children: <Widget>[
                Text(
                  "今日考评",
                  style: TextStyle(color: UColor.secondary, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "0",
                  style: TextStyle(color: UColor.secondary, fontSize: 25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
