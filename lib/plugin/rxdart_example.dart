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
      _ItemModel("concat", () {
        Rx.concat([
          Stream.value(1),
          Rx.timer(2, Duration(seconds: 5)),
          Stream.value(3),
        ]).listen(print);
      }),
      _ItemModel("timer", () {
        Rx.timer("timer_1", Duration(milliseconds: 5000)).listen((event) {
          print(event);
        });
      }),
      _ItemModel("repeat", () {
        Rx.repeat((repeatIndex) {
          return Stream.value("repateIndex: $repeatIndex");
        }, 2)
            .listen((event) {
          print("event:${event}");
        });
      }),
      _ItemModel("retry", () {
        var streamSubscription = Rx.retry(() {
          return Stream.value(1).concatWith([Stream<int>.error(Error())]);
        }).listen(
          (event) {
            print("event: $event");
          },
          onError: (error) {
            print("error: $error");
          },
          onDone: () {
            print("Done");
          },
        );
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
