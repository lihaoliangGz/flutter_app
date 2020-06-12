import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  final List<String> entries = ["A", "B", "C"];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      //ListView嵌套ListView
      //如果需要两个listview同时滑动，则需要向他们传同一个scrollcontroller
      body: ListView(
        children: <Widget>[
          //=======
          ListView(
            padding: EdgeInsets.all(40),
            shrinkWrap: true, //为true可以解决子控件必须设置高度的问题
            physics: NeverScrollableScrollPhysics(), //禁用滑动事件
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text('Entry A')),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text('Entry B')),
              ),
              Container(
                height: 50,
                color: Colors.amber[100],
                child: const Center(child: Text('Entry C')),
              ),
            ],
          ),
          //=========
          ListView.builder(
              padding: EdgeInsets.all(30),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: entries.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  color: Colors.amber[colorCodes[index]],
                  child: Center(
                    child: Text('Entry ${entries[index]}'),
                  ),
                );
              }),
          //========
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.all(20),
            physics: NeverScrollableScrollPhysics(),
            itemCount: entries.length,
            itemBuilder: (context, index) {
              return Container(
                height: 50,
                color: Colors.amber[colorCodes[index]],
                child: Center(
                  child: Text('Entry ${entries[index]}'),
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(),
          ),
          //=======
          //ListView.custom(childrenDelegate: null)
        ],
      ),
    );
  }
}
