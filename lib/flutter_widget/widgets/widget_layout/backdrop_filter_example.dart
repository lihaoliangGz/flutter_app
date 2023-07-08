import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/assets/assets.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class BackdropFilterExample extends BaseStatelessApp{
  @override
  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Text('0' * 10000),
                Center(
                  child: ClipRect(  // <-- clips to the 200x200 [Container] below
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 5.0,
                        sigmaY: 5.0,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        width: 200.0,
                        height: 200.0,
                        child: const Text('Hello World'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 150,
            child: Stack(
              children: <Widget>[
                Positioned.fill(child: Image.asset(Assets.imagesIcon)),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 150,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: Image.asset(Assets.imagesIcon),
            ),
          )
        ],
      ),
    );

  }

  @override
  String getTitle() {
    return 'BackdropFilter';
  }

}