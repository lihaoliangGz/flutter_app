import 'package:flutter/material.dart';

class DismissibleExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DismissibleState();
  }
}

class _DismissibleState extends State<DismissibleExample> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dismissible"),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Dismissible(
                background: Container(
                  color: Colors.green,
                ),
                key: ValueKey<int>(items[index]),
                onDismissed: (DismissDirection direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                },
                child: ListTile(
                  title: Text(
                    'Item ${items[index]}',
                  ),
                ),
              );
            }),
      ),
    );
  }
}
