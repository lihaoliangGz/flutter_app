import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class FractionallySizedBoxExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 250,
          color: Colors.greenAccent,
          child: FractionallySizedBox(
            widthFactor: 0.75, //代表可用尺寸的75%
            heightFactor: 0.5, //代表可用尺寸的50%
            alignment: AlignmentDirectional.center,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 250,
          color: Colors.cyanAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
              //使用FractionallySizedBox添加可用尺寸30%的间距, 外层需包裹Flexible
              Flexible(
                child: FractionallySizedBox(
                  widthFactor: 0.30, //代表可用尺寸的30%
                  //heightFactor: 0.5, //代表可用尺寸的50%
                  alignment: AlignmentDirectional.center,
                ),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  String getTitle() {
    return 'FractionallySizedBox';
  }
}
