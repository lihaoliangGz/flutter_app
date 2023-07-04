import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/CartApp.dart';
import 'package:flutterapp/FirstFlutterApp.dart';
import 'package:flutterapp/IOApp.dart';
import 'package:flutterapp/ImagesApp.dart';
import 'package:flutterapp/JsonSerializableApp.dart';
import 'package:flutterapp/LayoutApp.dart';
import 'package:flutterapp/LayoutMethodApp.dart';
import 'package:flutterapp/PlatformChannelApp.dart';
import 'package:flutterapp/StateManagerApp.dart';
import 'package:flutterapp/TextInputApp.dart';
import 'package:flutterapp/ThemeApp.dart';
import 'package:flutterapp/WidgetFramework.dart';
import 'package:flutterapp/animation/animation_app.dart';
import 'package:flutterapp/dart/dart_app.dart';
import 'package:flutterapp/debug_app.dart';
import 'package:flutterapp/flutter_widget/flutter_widget_app.dart';
import 'package:flutterapp/fonts_family_app.dart';
import 'package:flutterapp/gesture/gesture__app.dart';
import 'package:flutterapp/layout_constraint_example.dart';
import 'package:flutterapp/navigation_routing/navigation_and_routing_app.dart';
import 'package:flutterapp/network/network_page.dart';
import 'package:flutterapp/other_demo.dart';
import 'package:flutterapp/plugin/flutter_plugin.dart';
import 'package:flutterapp/reload_page.dart';
import 'package:flutterapp/status_bar_page.dart';
import 'package:flutterapp/temp/temp_app.dart';
import 'package:flutterapp/test_debug/test_debug_app.dart';

import 'TabBarApp.dart';

class FirstFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FirstFlutterApp()),
        );
      },
      child: Text("编写您的第一个 Flutter App"),
    );
  }
}

class DartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DartApp()),
        );
      },
      child: Text("Dart"),
    );
  }
}

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CartApp()),
        );
      },
      child: Text('购物车'),
    );
  }
}

class FontsFamily extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FontsFamilyApp()),
        );
      },
      child: Text('自定义字体'),
    );
  }
}

class Gesture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GestureApp()),
        );
      },
      child: Text('处理手势'),
    );
  }
}

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ImagesApp()),
        );
      },
      child: Text('加载图片'),
    );
  }
}

class IO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => IOApp()),
        );
      },
      child: Text('读写文件'),
    );
  }
}

class JsonSerializable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => JsonSerializableApp()),
        );
      },
      child: Text('JSON和序列化'),
    );
  }
}

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LayoutApp()),
        );
      },
      child: Text('在Flutter布局UI'),
    );
  }
}

class LayoutMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LayoutMethodApp()),
        );
      },
      child: Text('Flutter的布局方法'),
    );
  }
}

class NavigationAndRoutingItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NavigationAndRoutingApp()),
        );
      },
      child: Text('路由和导航'),
    );
  }
}

class Network extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NetworkPage()),
        );
      },
      child: Text('网络'),
    );
  }
}

class PlatformChannel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PlatformChannelApp()),
        );
      },
      child: Text('使用平台通道编写平台特定的代码'),
    );
  }
}

class StateManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StateManagerApp()),
        );
      },
      child: Text('状态管理'),
    );
  }
}

class TextInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TextInputApp()),
        );
      },
      child: Text('文本输入'),
    );
  }
}

class CustomTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ThemeApp()),
        );
      },
      child: Text('自定义主题'),
    );
  }
}

class WidgetFramework extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WidgetFrameworkApp()),
        );
      },
      child: Text('Flutter Widget框架概述'),
    );
  }
}

class Animation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AnimationApp()),
        );
      },
      child: Text('Flutter中的动画'),
    );
  }
}

class Widgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FlutterWidgetApp()),
        );
      },
      child: Text('Widgets'),
    );
  }
}

class TabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TabBarApp()),
        );
      },
      child: Text('TabBar'),
    );
  }
}

class Temp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TempApp()),
        );
      },
      child: Text('Temp'),
    );
  }
}

class Debug extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DebugApp()),
        );
      },
      child: Text('调试 Flutter Apps'),
    );
  }
}

class ForAndroid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FlutterPlugin()),
        );
      },
      child: Text('Flutter For Android'),
    );
  }
}

class FlutterPlugin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FlutterPluginDemo()),
        );
      },
      child: Text('Flutter 插件'),
    );
  }
}

class StatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StatusBarPage()),
        );
      },
      child: Text("Status bar"),
    );
  }
}

class TestDebug extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TestDebugApp()),
        );
      },
      child: Text("测试和调试"),
    );
  }
}

class Reload extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ReloadPage()),
        );
      },
      child: Text("热重载"),
    );
  }
}

class Constraints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LayoutConstraintExample()),
        );
      },
      child: Text("约束"),
    );
  }
}

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OtherDemo()),
        );
      },
      child: Text("其他"),
    );
  }
}

//=================== footer =======================
class DebugPaint extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DebugPaintState();
  }
}

class DebugPaintState extends State<DebugPaint> {
  bool _debugPaint = false;
  String _str = "开启界面绘制边界线";

  _changeDebugPaint() {
    if (_debugPaint) {
      _debugPaint = false;
      _str = "关闭界面绘制边界线";
    } else {
      _debugPaint = true;
      _str = "开启界面绘制边界线";
    }
    setState(() {
      debugPaintSizeEnabled = _debugPaint;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = _debugPaint;
    return ElevatedButton(
      onPressed: _changeDebugPaint,
      child: Text(_str),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        FirstFlutter(),
        DartDemo(),
        TestDebug(),
        Cart(),
        Widgets(),
        FontsFamily(),
        Gesture(),
        Images(),
        IO(),
        JsonSerializable(),
        Layout(),
        LayoutMethod(),
        NavigationAndRoutingItem(),
        Network(),
        PlatformChannel(),
        StateManager(),
        TextInput(),
        CustomTheme(),
        WidgetFramework(),
        Animation(),
        TabBar(),
        Temp(),
        Debug(),
        ForAndroid(),
        FlutterPlugin(),
        StatusBar(),
        Reload(),
        Constraints(),
        Other(),
        //===========footer============
        DebugPaint()
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) {
        Widget error = const Text('...rendering error...');
        if (widget is Scaffold || widget is Navigator) {
          error = Scaffold(body: Center(child: error));
        }
        ErrorWidget.builder = (errorDetails) {
          return error;
        };
        if (widget != null) return widget;
        throw ('widget is null');
      },
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter"),
          ),
          body: MainPage()),
    );
  }
}
