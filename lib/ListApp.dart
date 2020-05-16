import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

///创建一个ListView
class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new ListTile(
          leading: new Icon(Icons.map),
          title: new Text('Maps'),
        ),
        new ListTile(
          leading: new Icon(Icons.photo_album),
          title: new Text('album'),
        ),
        new ListTile(
          leading: new Icon(Icons.phone),
          title: new Text('Phone'),
        )
      ],
    );
  }
}

///创建一个水平ListView
class HorizontalListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.symmetric(vertical: 50),
      height: 200,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Container(
            width: 160,
            color: Colors.red,
          ),
          new Container(
            width: 160,
            color: Colors.blue,
          ),
          new Container(
            width: 160,
            color: Colors.green,
          ),
          new Container(
            width: 160,
            color: Colors.grey,
          ),
          new Container(
            width: 160,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

///长列表
class LongListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = new List<String>.generate(100, (index) => "Item $index");
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return new ListTile(
          title: new Text('${items[index]}'),
        );
      },
    );
  }
}

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
              style: Theme.of(context).textTheme.headline,
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
class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GridView.count(
      crossAxisCount: 3,
      children: new List.generate(100, (index) {
        return new Center(
          child: new Text(
            "item $index",
            style: Theme.of(context).textTheme.headline,
          ),
        );
      }),
    );
  }
}

class ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = 'Lists';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new GridViewDemo(),
      ),
    );
  }
}
