import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:fluttertoast/fluttertoast.dart';

///向左滑动删除列表item
class SlidePage extends BaseStatelessApp {
  final items = new List.generate(10, (index) => "Item ${index + 1}");

  @override
  Widget getBody() {
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return new Dismissible(
            key: new Key(item),
            onDismissed: (direction) {
              items.removeAt(index);
              Fluttertoast.showToast(
                  msg: "Scaffold.of(context).showSnackBar(snackBar)");
              // Scaffold.of(context).showSnackBar(
              //     new SnackBar(content: new Text("$item dismissed")));
            },
            background: new Container(
              color: Colors.red,
            ),
            child: new ListTile(
              title: new Text('$item'),
            ));
      },
    );
  }

  @override
  String getTitle() {
    return "滑动删除";
  }
}
