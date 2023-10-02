import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapp/test_debug/test/todo_list.dart';

void main() {
  testWidgets("Add and remove a todo", (widgetTester) async {
    await widgetTester.pumpWidget(const TodoList());
    await widgetTester.enterText(find.byType(TextField), "hi");

    // 使用 tap() 方法模拟点击按钮
    await widgetTester.tap(find.byType(FloatingActionButton));

    // 使用 pump() 方法确保应用状态发生改变时可以重建 widget
    await widgetTester.pump();

    // 确保列表清单项展现在屏幕上
    expect(find.text('hi'), findsOneWidget);

    // 使用 drag() 方法模拟滑动删除操作
    await widgetTester.drag(find.byType(Dismissible), const Offset(500, 0));

    // 使用 pumpAndSettle() 方法使 widget 树保持重建更新，直到消除的动画完成
    await widgetTester.pumpAndSettle();

    // 确保上述清单项不会再出现在屏幕上
    expect(find.text('hi'), findsNothing);
  });
}
