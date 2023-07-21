import 'package:flutter/material.dart';

///使用PageView.custom 创建
class PageViewExample2 extends StatefulWidget {
  const PageViewExample2({super.key});

  @override
  State<PageViewExample2> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<PageViewExample2> {
  List<String> items = <String>['1', '2', '3', '4', '5'];

  void _reverse() {
    setState(() {
      items = items.reversed.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView, 使用PageView.custom'),
      ),
      body: SafeArea(
        child: PageView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return KeepAlive(
                  data: items[index],
                  key: ValueKey<String>(items[index]),
                );
              },
              childCount: items.length,
              findChildIndexCallback: (Key key) {
                final ValueKey<String> valueKey = key as ValueKey<String>;
                final String data = valueKey.value;
                return items.indexOf(data);
              }),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () => _reverse(),
              child: const Text('Reverse items'),
            ),
          ],
        ),
      ),
    );
  }
}

class KeepAlive extends StatefulWidget {
  const KeepAlive({super.key, required this.data});

  final String data;

  @override
  State<KeepAlive> createState() => _KeepAliveState();
}

class _KeepAliveState extends State<KeepAlive>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Text(widget.data);
  }
}
