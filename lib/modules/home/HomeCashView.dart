import 'package:flutter/material.dart';
import 'HomeTitleView.dart';
import 'package:flutter_ulucu/public.dart';

/// 首页收银叠加
class HomeCashView extends StatelessWidget {
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
          buildTitle(false, "收银叠加"),
          buildContent(),
        ],
      ),
    );
  }



  /// 构建内容
  Widget buildContent() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: Screen.width * 0.4,
            padding: EdgeInsets.only(top: 10, left: 15, right: 0, bottom: 10),
            child: Column(
              children: <Widget>[
                Text(
                  "昨日叠加",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "0",
                      style: TextStyle(color: UColor.secondary, fontSize: 25),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      child: Text("笔", style: TextStyle(color: UColor.secondary, fontSize: 18)),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Text("较前日环比--%", style: TextStyle(color: Colors.grey,fontSize: 15),)

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
                  "异常门店",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Text(
                      "2",
                      style: TextStyle(color: UColor.secondary, fontSize: 25),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      child: Text("家", style: TextStyle(color: UColor.secondary, fontSize: 18)),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Text("较前日环比20%", style: TextStyle(color: Colors.grey,fontSize: 15),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
