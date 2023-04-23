import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

///Effective dart-使用
class EffectiveUsageDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        MaterialButton(
            child: Text("集合"),
            onPressed: () {
              _collection();
            }),
        MaterialButton(
            child: Text("函数"),
            onPressed: () {
              _function();
            }),
        MaterialButton(
            child: Text("参数"),
            onPressed: () {
              _insert("");
            }),
        MaterialButton(
            child: Text("变量"),
            onPressed: () {

            }),
        MaterialButton(
            child: Text("成员"),
            onPressed: () {

            }),
        MaterialButton(
            child: Text("构造函数"),
            onPressed: () {

            }),
        MaterialButton(
            child: Text("错误处理"),
            onPressed: () {

            }),
        MaterialButton(
            child: Text("异步"),
            onPressed: () {

            }),
      ],
    );
  }

  @override
  String getTitle() {
    return "Effective dart-使用";
  }

  //============== 集合 ====================
  _collection() {
    // _whereType();
    _cast();
  }

  _whereType() {
    // var objects = [1, "a", 2, "b", 3];
    // var ints = objects.where((e) => e is int);

    // var objects = [1, "a", 2, "b", 3];
    // var ints = objects.where((e) => e is int).cast<int>();

    var objects = [1, "a", 2, "b", 3];
    var ints = objects.whereType<int>();
    print("ints=${ints}");
  }

  _cast() {
    var stuff = <dynamic>[1, 2];
    var ints = List<int>.from(stuff);
    print("ints=$ints");

    var stuff2 = <dynamic>[1, 2];
    var reciprocals2 = stuff2.map<double>((n) => 1 / n);
    print("$reciprocals2");
  }

  //============== 函数 ====================
  _function() {
    //_main();
    _names();
  }

  _main() {
    localFunction() {
      print("函数内定义函数");
    }

    localFunction();
  }

  _names() {
    var names = [1, 2];
    // names.forEach((element) {
    //   print(element);
    // });
    names.forEach(print);
  }

  //============== 参数 ====================
  void _insert(Object item, {int at = 0}) {}

  void error([String? message]) {}

  //============== 构造函数 ====================


}