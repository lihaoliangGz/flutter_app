import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

/// rxdart
class RxDartExample extends StatefulWidget {
  const RxDartExample({super.key});

  @override
  State<RxDartExample> createState() => _RxDartExampleState();
}

class _RxDartExampleState extends State<RxDartExample> {
  List<_ItemModel>? dataList;

  @override
  void initState() {
    initData();
    super.initState();
  }

  void initData() {
    dataList = [
      _ItemModel("combineLatest", () {
        Rx.combineLatest(
          [
            Stream.value('a'),
            Stream.fromIterable(['b', 'c', 'd'])
          ],
              (list) => list.join(),
        ).listen(print);
      }),
      _ItemModel("timer", () {
        Rx.timer("timer_1", Duration(milliseconds: 5000)).listen((event) {
          print(event);
        });
      }),
    ];
  }

  @override
  Widget build(BuildContext context) {
    initData();
    return Scaffold(
      appBar: AppBar(
        title: Text("RxDart"),
      ),
      body: ListView(
        children: List.generate(dataList!.length, (index) {
          return ElevatedButton(
            onPressed: dataList![index].callback,
            child: Text(dataList![index].title),
          );
        }),
      ),
    );
  }
}

class _ItemModel {
  String title;
  Function() callback;

  _ItemModel(this.title, this.callback);
}
