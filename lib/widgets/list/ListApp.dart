import 'package:flutter/material.dart';

//不用类型子项的列表
abstract class ListItem {}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}

class MultiListViewDemo extends StatelessWidget {
  final List<ListItem> items = new List<ListItem>.generate(
      120,
      (index) => index % 6 == 0
          ? new HeadingItem('Heading $index')
          : new MessageItem("Sender $index", "body $index"));

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        if (item is HeadingItem) {
          return new ListTile(
            title: new Text(
              item.heading,
              style: Theme.of(context).textTheme.headline1,
            ),
          );
        } else if (item is MessageItem) {
          return new ListTile(
            title: new Text(item.sender),
            subtitle: new Text(item.body),
          );
        }
      },
    );
  }
}

///Grid List
@Deprecated("删除")
class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 3,
      children: new List.generate(100, (index) {
        return new Center(
          child: new Text(
            "item $index",
            style: Theme.of(context).textTheme.headline1,
          ),
        );
      }),
    );
  }
}
