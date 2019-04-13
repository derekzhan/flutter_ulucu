import 'package:flutter/material.dart';
import 'package:flutter_ulucu/public.dart';
import 'SwiperView.dart';
import "../home/HomeTitleView.dart";

/*
 * 发现
 */
class DiscoverScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("发现"),
        centerTitle: true,
        elevation: 0, //可以让appbar没有阴影
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white30),
        child: ListView(
          children: [
            SwiperView(),
            SizedBox(
              height: 10,
            ),
            buildTitle(false, "人员管理"),
            buildBody(),
            //buildNavigationBar(),
          ],
        ),
      ),
    );
  }

  var itemWidth = (Screen.width - 10 *2) / 4 ;
  Widget buildItem(text, image) {
    return Container(
      width: itemWidth,
      child:  Column(
          children: <Widget>[
            Image.asset(
              image,
              width: itemWidth * 0.5,
              height: itemWidth * 0.5,
            ),
            SizedBox(height: 5,),
            Text(text, style: TextStyle(fontSize: 13),)
          ]
      ),
    );
  }

  //
  Widget buildBody() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                buildItem("事件中心", "img/icon_find_event_center.png"),
                buildItem("人形报警", "img/find_figure.png"),
                buildItem("在线考评", "img/evalution.png"),
                buildItem("手机直播", "img/icon_find_phonelive_system.png"),

              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Row(
              children: <Widget>[
                buildItem("摇一摇巡店", "img/icon_find_phonelive_system.png"),
                buildItem("脱岗巡查", "img/icon_find_phonelive_system.png"),
                buildItem("定时巡店", "img/icon_find_phonelive_system.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
