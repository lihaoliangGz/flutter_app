import 'package:flutter/material.dart';

class ExampleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ExampleWidgetState();
  }
}

class ExampleWidgetState extends State<ExampleWidget> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = new TextEditingController();

    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new TextField(
          onChanged: (value) {
            print("value = $value");
          },
          controller: _controller,
          decoration: new InputDecoration(hintText: "请输入内容"),
        ),
        new RaisedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  new AlertDialog(
                    title: new Text("What you typed"),
                    content: new Text(_controller.text),
                  );
                });
          },
          child: new Text("Done"),
        )
      ],
    );
  }

  @override
  void dispose() {
    print("Dispose 销毁");
    super.dispose();
  }
}

class TextInputApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "文本输入",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('文本输入'),
        ),
        body: new ExampleWidget(),
      ),
    );
  }
}
