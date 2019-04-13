import 'package:flutter/material.dart';
import 'HomeTitleView.dart';
import 'package:flutter_ulucu/public.dart';

/// 首页顾客统计
class HomeCustomerView extends StatelessWidget {
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
          buildTitle(false, "今日顾客统计"),
          buildContent(),
        ],
      ),
    );
  }



  /// 构建内容
  Widget buildContent() {
    return Container(
      margin: EdgeInsets.all(10),
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
                    Text("  到店顾客总数："),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "0",
                      style: TextStyle(color: UColor.secondary, fontSize: 18),
                    ),
                    Text("人",style: TextStyle(color: UColor.secondary, fontSize: 14))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Image.asset("img/img_home_event_eventdone.png", height: 20),
                    Text("  较昨日环比："),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "0.5%",
                      style: TextStyle(color: UColor.secondary, fontSize: 18),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(

            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("0"),
                    Container(
                      width: Screen.width * 0.12,
                      height: Screen.width * 0.2,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.rectangle,
                        backgroundBlendMode: BlendMode.difference,

                      ),
                    ),
                    Text("今日")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text("0"),
                    Container(
                      width: Screen.width * 0.12,
                      height: Screen.width * 0.2,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.rectangle,
                        backgroundBlendMode: BlendMode.difference,

                      ),
                    ),
                    Text("昨日")
                  ],
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
