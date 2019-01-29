import 'package:flutter/material.dart';
import 'package:flutter_ulucu/public.dart';
import 'HomeHeadView.dart';
import 'HomeNavView.dart';
import 'HomeMessageView.dart';
import 'HomeEventView.dart';
import 'HomeExamView.dart';
import 'HomeCashView.dart';

// 首页动态
class HomeScene extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeSceneState();
  }
}

class _HomeSceneState extends State<HomeScene> {
  //滚动监听器
  ScrollController scrollController = ScrollController();

  // 滚动距离
  double navAlpha = 0;

  // 初始化生命周期方法
  @override
  void initState() {
    super.initState();
    fetchData();
    //监听滚动距离设置顶部导航是否显示
    scrollController.addListener(() {
      var offset = scrollController.offset;
      if (offset < 0) {
        if (navAlpha != 0) {
          setState(() {
            navAlpha = 0;
          });
        }
      } else if (offset < 50) {
        setState(() {
          navAlpha = 1 - (50 - offset) / 50;
        });
      } else if (navAlpha != -1) {
        setState(() {
          navAlpha = 1;
        });
      }
    });
  }

  // 从远程获取数据
  Future<void> fetchData() async {
    try {
      // todo 从本地mock数据
    } catch (e) {
      print(e);
    }
  }

  // 构建右侧按钮
  Widget buildActions() {
    return Container(
      width: 44,
      child: Image.asset(
        "img/message.png",
        color: Colors.white,
        width: 25,
        height: 25,
      ),
    );
  }

  // 构建顶部导航
  Widget buildNavigationBar() {
    return Stack(children: <Widget>[
      Positioned(
        child: Container(
          margin: EdgeInsets.fromLTRB(5, Screen.topSafeHeight + 15, 0, 0),
          //height: Screen.navigationBarHeight,
          //
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 50,
              ),
              Expanded(
                  child: Text(
                "视瞳科技有限公司",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: UColor.white,
                ),
                textAlign: TextAlign.center,
              )),
              buildActions()
            ],
          ),
        ),
      ),
      Opacity(
        opacity: navAlpha,
        child: Container(
          padding: EdgeInsets.fromLTRB(5, Screen.topSafeHeight, 0, 0),
          height: Screen.navigationBarHeight,
          color: UColor.primary,
          child: Row(
            children: <Widget>[
              SizedBox(width: 50),
              Expanded(
                child: Text(
                  '视瞳科技有限公司',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: UColor.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              buildActions()
            ],
          ),
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white30),
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: fetchData,
              child: ListView(
                padding: EdgeInsets.only(top: 0),
                controller: scrollController,
                children: <Widget>[
                  HomeHeadView(),
                  SizedBox(
                    height: 50,
                  ),
                  HomeNavView(),
                  HomeMessageView(),
                  HomeEventView(),
                  HomeExamView(),
                  HomeCashView(),
                ],
              ),
            ),
            buildNavigationBar(),
          ],
        ),
      ),
    );
  }
}
