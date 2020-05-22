import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar(this.title);

  // Widget子类中的字段往往都会定义为"final"
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56,
      padding: new EdgeInsets.symmetric(horizontal: 8),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null),
          new Expanded(child: title),
          new IconButton(
              icon: new Icon(Icons.search), tooltip: 'Search', onPressed: null)
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(new Text(
            'Example title',
            style: Theme.of(context).primaryTextTheme.title,
          )),
          new Expanded(
              child: new Center(
            child: new Text('Hello World!'),
          ))
        ],
      ),
    );
  }
}

// -----使用material组件------
class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu), tooltip: 'Menu', onPressed: null),
        title: new Text('Example title'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search), tooltip: 'Search', onPressed: null)
        ],
      ),
      body: new Center(
        child: new Counter2(), //todo===========================
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add), tooltip: 'Add', onPressed: null),
    );
  }
}

//-----处理手势-----
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print('点击按钮');
      },
      child: new Container(
        height: 36,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(5),
            color: Colors.lightGreen[500]),
        child: new Center(
          child: new Text("Engage"),
        ),
      ),
    );
  }
}

// ------根据用户输入改变widget-----
class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CounterState();
  }
}

class CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: _increment,
          child: new Text("Increment"),
        ),
        new Text('Counter:$_counter')
      ],
    );
  }
}

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.counter});

  final int counter;

  @override
  Widget build(BuildContext context) {
    return new Text("$counter");
  }
}

class CounterIncrementor extends StatelessWidget {
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: onPressed,
      child: new Text("Increment"),
    );
  }

  CounterIncrementor({this.onPressed});
}

class Counter2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Counter2State();
  }
}

class _Counter2State extends State<Counter2> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new CounterIncrementor(
          onPressed: _increment,
        ),
        new CounterDisplay(
          counter: _counter,
        )
      ],
    );
  }
}

class WidgetFrameworkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Widget框架概述',
      home: new MyScaffold(),
    );
  }
}
