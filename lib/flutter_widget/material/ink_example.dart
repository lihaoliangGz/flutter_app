import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/assets/assets.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class InkExample extends BaseStatelessApp {
  static const tempUrl =
      'https://lmg.jj20.com/up/allimg/1113/031920120534/200319120534-7-1200.jpg';

  @override
  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          // 这个例子展示了如何使用Ink在Material小部件上绘制一个黄色的矩形，
          // 同时在黄色矩形上保留Ink效果
          Material(
            color: Colors.teal[900],
            child: Center(
              child: Ink(
                color: Colors.yellow,
                width: 200.0,
                height: 100.0,
                child: InkWell(
                    onTap: () {
                      log('tap1');
                    },
                    child: const Center(
                      child: Text('YELLOW'),
                    )),
              ),
            ),
          ),

          // 在一个Material小部件上方使用InkWell打印一张图片
          Material(
            color: Colors.grey[800],
            child: Center(
              child: Ink.image(
                image: const AssetImage(Assets.lake),
                fit: BoxFit.cover,
                width: 300.0,
                height: 200.0,
                child: InkWell(
                    onTap: () {
                      log('tap2');
                    },
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'KITTEN',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
              ),
            ),
          ),

          // 直接将Ink包裹在一个裁剪小部件中是行不通的，因为负责裁剪的材质是打印在上面的Material。
          // 在这个例子中，图像没有按预期进行裁剪。这是因为它被渲染到了Scaffold的body Material上，而该Material并没有被ClipRRect包裹起来。
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Ink.image(
              fit: BoxFit.fill,
              width: 300,
              height: 300,
              image: AssetImage(Assets.lake),
              child: InkWell(
                onTap: () {
                  log('tap3');
                },
                child: const Align(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'PUFFIN',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          //将Ink.image包裹在一个Material小部件中。这样可以确保负责裁剪内容的材质也负责绘制图像。
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Material(
              child: Ink.image(
                fit: BoxFit.fill,
                width: 300,
                height: 300,
                image: AssetImage(Assets.lake),
                child: InkWell(
                  onTap: () {
                    log('tap4');
                  },
                  child: const Align(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'PUFFIN',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Material(
              child: Ink.image(
                fit: BoxFit.fill,
                width: 300,
                height: 300,
                image: CachedNetworkImageProvider(tempUrl),
                child: InkWell(
                  onTap: () {
                    log('tap5');
                  },
                  child: const Align(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'PUFFIN',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return 'Ink';
  }
}
