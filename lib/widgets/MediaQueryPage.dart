import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) {
        return MediaQuery(
          //设置文字大小不随系统设置改变
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: Center(
            child: Text("MediaQuery"),
          ),
        );
      },
    );
  }
}
