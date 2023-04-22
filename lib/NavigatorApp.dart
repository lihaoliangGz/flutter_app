import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//--------- 导航到新页面并返回------------
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First Screen'),
      ),
      body: new Center(
        child: new ElevatedButton(
            child: new Text('Launch new screen'),
            onPressed: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new SecondScreen()));
            }),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Second Screen'),
      ),
      body: new Center(
        child: new ElevatedButton(
            child: new Text('Go back!'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}

//--------------给新页面传值-------------------
class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class TodosScreen extends StatelessWidget {
  final todos = new List<Todo>.generate(
      14,
      (i) => new Todo(
          'Todo $i', 'A description of what needs to be done for Todo $i'));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Todos'),
      ),
      body: new ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text(todos[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>
                            new DetailScreen(todo: todos[index])));
              },
            );
          }),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Todo todo;

  DetailScreen({required this.todo}) : super();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('${todo.title}'),
      ),
      body: new Padding(
        padding: new EdgeInsets.all(16),
        child: new Text('${todo.description}'),
      ),
    );
  }
}

//---------从新页面返回数据给上一个页面------------
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Returning Data Demo'),
      ),
      body: new Center(
        child: new SelectionButton(),
      ),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ElevatedButton(
      onPressed: () {
        _navigatorAndDisplaySelection(context);
      },
      child: new Text('Pick an option, any option!'),
    );
  }

  _navigatorAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(context,
        new MaterialPageRoute(builder: (context) => new SelectionScreen()));
    // Scaffold.of(context)
    //     .showSnackBar(new SnackBar(content: new Text('$result')));
    Fluttertoast.showToast(msg: "Scaffold.of(context).showSnackBar(snackBar)");
    print("result = $result");
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Pick an Option'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(8),
              child: new ElevatedButton(
                  child: new Text('Yep!'),
                  onPressed: () {
                    Navigator.pop(context, 'Yep!');
                  }),
            ),
            new Padding(
              padding: const EdgeInsets.all(8),
              child: new ElevatedButton(
                  child: new Text('Nope.'),
                  onPressed: () {
                    Navigator.pop(context, 'Nope.');
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class NavigatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "导航到新页面并返回";

    return new MaterialApp(
      title: title,
      home: new HomeScreen(),
    );
  }
}
