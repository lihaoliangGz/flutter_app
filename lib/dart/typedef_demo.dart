import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class TypedefDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    SortedCollection coll = SortedCollection(sort, sort);

    // 虽然知道 compare 是函数，但是函数是什么类型 ？
    assert(coll.compare is Function);
    assert(coll.compare2 is Compare);



    return Center(
      child: Text("Typedefs"),
    );
  }

  @override
  String getTitle() {
    return "Typedefs";
  }
}

typedef Compare = int Function(Object a, Object b);

class SortedCollection {
  Function compare;
  Compare compare2;

  SortedCollection(int f(Object a, Object b), this.compare2) {
    compare = f;
  }
}

// Initial, broken implementation. // broken ？
int sort(Object a, Object b) => 0;
