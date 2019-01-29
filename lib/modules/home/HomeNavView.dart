import 'package:flutter/material.dart';
import 'package:flutter_ulucu/public.dart';

//首页顶部导航
class HomeNavView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildItem("img/icon_find_event_center.png", "事件中心"),
          buildItem("img/icon_find_inspect.png", "门店点检"),
          buildItem("img/icon_message_list_rxbj.png", "人形报警"),
          buildItem("img/icon_find_repeatcustomer.png", "顾客分析"),
        ],
      ),
    );
  }

  Widget buildItem(String img, String name) {
    return Column(
      children: <Widget>[
        Image.asset(img,width: 35,height: 35,),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.black54, fontSize: 12),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
