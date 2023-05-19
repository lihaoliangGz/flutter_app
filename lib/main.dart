import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/HomePage.dart';

void main() {
  debugPaintSizeEnabled = false;
  WidgetsFlutterBinding.ensureInitialized(); //不加这个强制横/竖屏会报错
  // SystemChrome.setSystemUIOverlayStyle(
  //   SystemUiOverlayStyle(
  //     statusBarColor: Colors.transparent, //设置状态栏的背景色为红色
  //   ),
  // );
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // 仅支持垂直方向
  ]);

  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    print("FlutterError.onError, details:\n${details}");
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    print("PlatformDispatcher.onError, error:\n${error}\n stack:\n${stack}");
    return true;
  };

  runApp(new HomePage());
}
