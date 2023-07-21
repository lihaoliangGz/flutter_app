import 'package:flutter/material.dart';

///使用默认构造函数, 允许使用PageController来动画PageView
class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PageView, 使用默认构造函数'),
        ),
        body: SizedBox(
          height: 200,
          child: PageView(
            controller: _pageController,
            children: <Widget>[
              ColoredBox(
                color: Colors.red,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_pageController.hasClients) {
                        _pageController.animateToPage(
                          1,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: const Text('Next'),
                  ),
                ),
              ),
              ColoredBox(
                color: Colors.blue,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_pageController.hasClients) {
                        _pageController.animateToPage(
                          0,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: const Text('Previous'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
