import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class MultiListViewPage extends BaseStatelessApp {
  final List<_ListItem> items = new List<_ListItem>.generate(
      120,
      (index) => index % 6 == 0
          ? new _HeadingItem('Heading $index')
          : new _MessageItem("Sender $index", "body $index"));

  @override
  Widget getBody() {
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        if (item is _HeadingItem) {
          return new ListTile(
            title: new Text(
              item.heading,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          );
        } else if (item is _MessageItem) {
          return new ListTile(
            title: new Text(item.sender),
            subtitle: new Text(item.body),
          );
        }
      },
    );
  }

  @override
  String getTitle() {
    return "ListView实现多布局";
  }
}

abstract class _ListItem {}

class _HeadingItem implements _ListItem {
  final String heading;

  _HeadingItem(this.heading);
}

class _MessageItem implements _ListItem {
  final String sender;
  final String body;

  _MessageItem(this.sender, this.body);
}
