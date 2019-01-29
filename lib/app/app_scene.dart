import 'package:flutter/material.dart';
import 'package:flutter_ulucu/public.dart';
import 'package:flutter_ulucu/app/root_scene.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class AppScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "视瞳云",
      navigatorObservers: [routeObserver],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          dividerColor: Color(0xffeeeeee),
          scaffoldBackgroundColor: UColor.paper,
          textTheme: TextTheme(body1: TextStyle(color: UColor.darkGray))),
      home: RootScene(),
    );
  }
}
