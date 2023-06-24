import 'package:flutter/material.dart';

class ReuseWidgetExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ReuseWidgetState();
  }
}

class _ReuseWidgetState extends State<ReuseWidgetExample> {
  String content = "初始内容";
  int count = 0;

  @override
  Widget build(BuildContext context) {
    var textUnchanged1 = const Text("内容不变");
    var textUnchanged2 = _buildText();
    var textUnchanged3 = const _CustomWidget();

    var text1 = Text(content);

    print("textUnchanged1, hasCode: ${textUnchanged1.hashCode}, runtimeType: ${textUnchanged1.runtimeType}, key: ${textUnchanged1.key}");
    print("textUnchanged2, hasCode: ${textUnchanged2.hashCode}, runtimeType: ${textUnchanged2.runtimeType}, key: ${textUnchanged2.key}");
    print("textUnchanged3, hasCode: ${textUnchanged3.hashCode}, runtimeType: ${textUnchanged3.runtimeType}, key: ${textUnchanged3.key}");
    print("text1, hasCode: ${text1.hashCode}, runtimeType: ${text1.runtimeType}, key: ${text1.key}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget 重建测试"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                content = "内容${++count}";
              });
            },
            child: Text("setState"),
          ),
          textUnchanged1,
          textUnchanged2,
          textUnchanged3,
          text1,
        ],
      ),
    );
  }

  Widget _buildText() {
    return const Text("内容不变");
  }
}

class _CustomWidget extends StatelessWidget {
  const _CustomWidget();

  @override
  Widget build(BuildContext context) {
    return Text("内容不变");
  }
}
