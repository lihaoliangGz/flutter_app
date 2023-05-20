import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class HandleErrorPage extends BaseStatelessApp {
  var content;

  @override
  Widget getBody() {
    return Column(
      children: [
        ElevatedButton(
          child: Text("抛出flutter错误"),
          onPressed: () {
            throw Exception("fluter的错误");
          },
        ),
        ElevatedButton(
          child: Text("未被flutter捕获的错误"),
          onPressed: () async {
            const channel = MethodChannel('crashy-custom-channel');
            await channel.invokeMethod('blah');
          },
        ),
        SizedBox(
          height: 500,
          //child: Text(content), //产生构建时错误
        ),
        SizedBox(
          height: 500,
          child: Text("模拟出现-黄色和黑色条纹图案"),
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "处理错误";
  }
}
