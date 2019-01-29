import 'package:flutter/material.dart';
import 'package:flutter_ulucu/app/app_scene.dart';
import 'package:flutter/services.dart';
import 'dart:io';

void main() {
  runApp(AppScene());

  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
