import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/widgets/notification_widget.dart';

///使用StatefulWidget管理状态会更好
class OverlayExample extends BaseStatelessApp {
  OverlayEntry? _overlayEntry;

  @override
  Widget getBody() {
    return ListView(
      children: [
        ElevatedButton(
          onPressed: () {
            // _createHighLightOverlay();
            NotificationWidget.showNotification(
                context: context,
                imageUrl: "http://www.baidu.com",
                title: "nickname",
                content: "内容");
          },
          child: Text(
            "show",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  void _createHighLightOverlay() {
    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          top: 30,
          left: 50,
          right: 50,
          child: SafeArea(
            //使用DefaultTextStyle, 弥补没有Scaffold的问题,不然文本底部会出现双划线
            child: DefaultTextStyle(
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
              child: GestureDetector(
                onTap: () {
                  _removeHighLightOverlay();
                },
                child: Container(
                  color: Colors.black12,
                  width: 200,
                  height: 100,
                  child: Center(
                    child: Text("float dialog"),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeHighLightOverlay() {
    _overlayEntry?.remove();
    _overlayEntry == null;
  }

  @override
  String getTitle() {
    return "Overlay";
  }
}
