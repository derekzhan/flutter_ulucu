import 'package:flutter/material.dart';
import 'package:flutter_ulucu/public.dart';

// 首页顶部view
class HomeHeadView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeHeadViewState();
  }
}

class HeadItemModel {
  String name;
  String title;
  int number;

  HeadItemModel(name, title, number) {
    this.name = name;
    this.title = title;
    this.number = number;
  }
}

class _HomeHeadViewState extends State<HomeHeadView> {
  Widget buildHeadItem(HeadItemModel item) {
    var width = Screen.width / 3 - 35;
    return Container(
      margin: EdgeInsets.only(top: 40),
      height: width,
      width: width,
      padding: EdgeInsets.all(10),
      // 装饰
      decoration: BoxDecoration(
          color: UColor.white,
          boxShadow: [BoxShadow(color: Color(0x22000000), blurRadius: 8)],
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            item.title,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          Text(
            item.number.toString(),
            style: TextStyle(fontSize: 17, color: UColor.primary),
          ),
          Text(item.name, style: TextStyle(fontSize: 14, color: Colors.black)),
        ],
      ),
    );
  }

  Widget buildContent() {
    return Stack(
      children: <Widget>[
        Container(
          //margin: EdgeInsets.only(top: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildHeadItem(HeadItemModel("门店总数", "2%可视", 2)),
              buildHeadItem(HeadItemModel("视频总数", "8%在线", 10)),
              buildHeadItem(HeadItemModel("收藏门店", "20%可视", 2)),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = Screen.width;
    var bgHeight = Screen.height / 5;
    //var height = Screen.topSafeHeight + Screen.height / 4.5;

    return Stack(
      alignment: const FractionalOffset(0.9, 2.4), //方法一
      children: <Widget>[
        Image.asset(
          "img/tab_me_head_bg.png",
          fit: BoxFit.cover,
          width: width,
          height: bgHeight,
        ),
        buildContent(),
      ],
    );
  }
}
