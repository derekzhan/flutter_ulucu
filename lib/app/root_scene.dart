import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ulucu/public.dart';
import 'package:flutter_ulucu/modules/home/HomeScene.dart';
import 'package:flutter_ulucu/modules/shop/ShopScene.dart';
import 'package:flutter_ulucu/modules/me/MeScene.dart';
import 'package:flutter_ulucu/modules/discover/DiscoverScene.dart';

// app 入口
class RootScene extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RootSceneState();
  }
}

class RootSceneState extends State<RootScene> {
  // tab索引
  int _tabIndex = 0;

  // 默认tab的图标
  List<Image> _tabImages = [
    Image.asset(
      'img/tab_home_normal.png',
      width: 25,
      height: 25,
    ),
    Image.asset(
      'img/tab_store_normal.png',
      width: 25,
      height: 25,
    ),
    Image.asset(
      'img/tab_discover_normal.png',
      width: 25,
      height: 25,
    ),
    Image.asset(
      'img/tab_me_normal.png',
      width: 25,
      height: 25,
    ),
  ];

  // 选中的图标
  List<Image> _tabSelectedImages = [
    Image.asset(
      'img/tab_home_checked.png',
      width: 25,
      height: 25,
    ),
    Image.asset(
      'img/tab_store_checked.png',
      width: 25,
      height: 25,
    ),
    Image.asset(
      'img/tab_discover_checked.png',
      width: 25,
      height: 25,
    ),
    Image.asset(
      'img/tab_me_checked.png',
      width: 25,
      height: 25,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: <Widget>[
          HomeScene(),
          ShopScene(),
          DiscoverScene(),
          MeScene(),
        ],
        index: _tabIndex,
      ),
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: Colors.white,
          activeColor: UColor.primary,
          currentIndex: _tabIndex,
          onTap: (index) {
            setState(() {
              _tabIndex = index;
            });
          },
          iconSize: 0.5,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: getTabIcon(0), title: Text("动态",style: TextStyle(fontSize: 12),)),
            BottomNavigationBarItem(icon: getTabIcon(1), title: Text("门店",style: TextStyle(fontSize: 12))),
            BottomNavigationBarItem(icon: getTabIcon(2), title: Text("发现",style: TextStyle(fontSize: 12))),
            BottomNavigationBarItem(
              icon: getTabIcon(3),
              title: Text("我的",style: TextStyle(fontSize: 12)),
            ),
          ]),
    );
  }

  Image getTabIcon(int index) {
    if (index == _tabIndex) {
      return _tabSelectedImages[index];
    } else {
      return _tabImages[index];
    }
  }
}
