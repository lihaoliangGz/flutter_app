import 'package:flutter/material.dart';

class ObjectKeyExample extends StatefulWidget {
  const ObjectKeyExample({super.key});

  @override
  State<ObjectKeyExample> createState() => _ObjectKeyExampleState();
}

class _ObjectKeyExampleState extends State<ObjectKeyExample> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];

  void addItem() {
    setState(() {
      items.add('Item ${items.length + 1}');
    });
  }

  void removeItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter ObjectKey Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            // 在这个示例中，使不使用ObjectKey都一样
            key: ObjectKey(items[index]), // 使用ObjectKey标识每个列表项
            title: Text(items[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                removeItem(index);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        child: Icon(Icons.add),
      ),
    );
  }
}
