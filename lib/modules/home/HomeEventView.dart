import 'package:flutter/material.dart';
import 'HomeTitleView.dart';
import 'package:flutter_ulucu/public.dart';

/// 首页事件统计
class HomeEventView extends StatelessWidget {
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
          buildTitle(false, "今日事件统计"),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("--"),
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
                        "待处理",
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
                      "发布时间",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("--", style: TextStyle(color: Colors.grey)),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: Screen.width * 0.2,
            child: Image.asset("img/image_default_picture_cache.9.png"),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: Screen.width * 0.4,
            padding: EdgeInsets.only(top: 10, left: 15, right: 0, bottom: 10),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset(
                      "img/img_home_event_eventall.png",
                      height: 20,
                    ),
                    Text("  事件总数："),
                    Text(
                      "0",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Image.asset("img/img_home_event_eventdone.png", height: 20),
                    Text("  已处理事件："),
                    Text(
                      "0",
                      style: TextStyle(color: UColor.secondary, fontSize: 18),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: UColor.paper, width: 3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "0",
                  style: TextStyle(color: UColor.secondary, fontSize: 25),
                ),
                Text(
                  "待处理",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
