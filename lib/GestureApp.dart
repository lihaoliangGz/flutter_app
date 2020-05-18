import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new GestureDetector(
        onTap: () {
          final snackBar = new SnackBar(content: new Text("Tap"));
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: new Container(
          padding: new EdgeInsets.all(12),
          decoration: new BoxDecoration(
              color: Theme.of(context).buttonColor,
              borderRadius: new BorderRadius.circular(8)),
          child: new Text("My Button"),
        ),
      ),
    );
  }
}

///添加水波纹效果
class RippleHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new InkWell(
        onTap: () {
          final snackBar = new SnackBar(content: new Text("Tap"));
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: new Container(
          padding: new EdgeInsets.all(20),
          child: new Text("Button"),
        ),
      ),
    );
  }
}

///实现滑动关闭
class SlideHomePage extends StatelessWidget {
  final items = new List.generate(10, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return new Dismissible(
            key: new Key(item),
            onDismissed: (direction) {
              items.removeAt(index);
              Scaffold.of(context).showSnackBar(
                  new SnackBar(content: new Text("$item dismissed")));
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
}

class GestureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "处理手势",
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('处理手势'),
        ),
        body: new SlideHomePage(),
      ),
    );
  }
}
