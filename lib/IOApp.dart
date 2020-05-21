import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

const String title = "读写文件";

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _DemoState();
  }
}

class _DemoState extends State<Demo> {
  int _counter;

  @override
  void initState() {
    super.initState();
    print("initState()方法执行");
    _readCounter().then((int value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _getLocalFile() async {
    String dir = (await getApplicationDocumentsDirectory()).path;
    print('dir= $dir');
    return new File('$dir/counter.txt');
  }

  Future<int> _readCounter() async {
    try {
      File file = await _getLocalFile();
      //String contents = file.readAsStringSync();
      String contents = await file.readAsString();
      return int.parse(contents);
    } catch (e) {
      return 0;
    }
  }

  Future<Null> _incrementCounter() async {
    setState(() {
      _counter++;
    });
    // write the variable as a string to the file
    await (await _getLocalFile()).writeAsString('$_counter');
  }

  Future<Null> _reduceCounter() async {
    setState(() {
      _counter--;
    });
    // write the variable as a string to the file
    await (await _getLocalFile()).writeAsString('$_counter');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('Button tapped $_counter time${_counter == 1 ? '' : 's'}'),
          new RaisedButton(
            onPressed: _reduceCounter,
            child: new Text("reduce"),
          )
        ],
      )),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}

class IOApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new Demo(),
    );
  }
}
