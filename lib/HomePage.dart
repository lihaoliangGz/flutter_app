import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/AnimationApp.dart';
import 'package:flutterapp/CartApp.dart';
import 'package:flutterapp/FirstFlutterApp.dart';
import 'package:flutterapp/FontsFamilyApp.dart';
import 'package:flutterapp/GestureApp.dart';
import 'package:flutterapp/IOApp.dart';
import 'package:flutterapp/ImagesApp.dart';
import 'package:flutterapp/JsonSerializableApp.dart';
import 'package:flutterapp/LayoutApp.dart';
import 'package:flutterapp/LayoutMethodApp.dart';
import 'package:flutterapp/ListApp.dart';
import 'package:flutterapp/NavigatorApp.dart';
import 'package:flutterapp/NetworkApp.dart';
import 'package:flutterapp/NetworkHttpApp.dart';
import 'package:flutterapp/PlatformChannelApp.dart';
import 'package:flutterapp/StateManagerApp.dart';
import 'package:flutterapp/TextInputApp.dart';
import 'package:flutterapp/ThemeApp.dart';
import 'package:flutterapp/UrlLauncherApp.dart';
import 'package:flutterapp/WidgetFramework.dart';
import 'package:flutterapp/dart/dart_app.dart';
import 'package:flutterapp/debug_app.dart';
import 'package:flutterapp/other_demo.dart';
import 'package:flutterapp/plugin/flutter_plugin.dart';
import 'package:flutterapp/svg_app.dart';
import 'package:flutterapp/widget_layout/WidgetLayout.dart';
import 'package:flutterapp/widget_menu/widgets_menu.dart';

import 'file:///C:/Users/Administrator/Desktop/flutter_app/lib/temp/temp_app.dart';

import 'TabBarApp.dart';

class FirstFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new FirstFlutterApp()),
        );
      },
      child: Text("编写您的第一个 Flutter App"),
    );
  }
}

class DartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new DartApp()),
        );
      },
      child: Text("Dart"),
    );
  }
}

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new CartApp()),
        );
      },
      child: Text('购物车'),
    );
  }
}

class FontsFamily extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new FontsFamilyApp()),
        );
      },
      child: Text('自定义字体'),
    );
  }
}

class Gesture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new GestureApp()),
        );
      },
      child: Text('处理手势'),
    );
  }
}

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new ImagesApp()),
        );
      },
      child: Text('加载图片'),
    );
  }
}

class IO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new IOApp()),
        );
      },
      child: Text('读写文件'),
    );
  }
}

class JsonSerializable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) => new JsonSerializableApp()),
        );
      },
      child: Text('JSON和序列化'),
    );
  }
}

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new LayoutApp()),
        );
      },
      child: Text('在Flutter布局UI'),
    );
  }
}

class LayoutMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new LayoutMethodApp()),
        );
      },
      child: Text('Flutter的布局方法'),
    );
  }
}

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new ListApp()),
        );
      },
      child: Text('创建一个ListView'),
    );
  }
}

class NavigatorItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new NavigatorApp()),
        );
      },
      child: Text('导航'),
    );
  }
}

class Network extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new NetworkApp()),
        );
      },
      child: Text('网络'),
    );
  }
}

class NetworkHttp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new NetworkHttpApp()),
        );
      },
      child: Text('网络和Http'),
    );
  }
}

class PlatformChannel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new PlatformChannelApp()),
        );
      },
      child: Text('使用平台通道编写平台特定的代码'),
    );
  }
}

class StateManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new StateManagerApp()),
        );
      },
      child: Text('状态管理'),
    );
  }
}

class TextInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new TextInputApp()),
        );
      },
      child: Text('文本输入'),
    );
  }
}

class CustomTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new ThemeApp()),
        );
      },
      child: Text('自定义主题'),
    );
  }
}

class UrlLauncher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new UrlLauncherApp()),
        );
      },
      child: Text('启动浏览器'),
    );
  }
}

class WidgetFramework extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new WidgetFrameworkApp()),
        );
      },
      child: Text('Flutter Widget框架概述'),
    );
  }
}

class Animation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new AnimationApp()),
        );
      },
      child: Text('Flutter中的动画'),
    );
  }
}

class WidgetLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new WidgetLayoutApp()),
        );
      },
      child: Text('Flutter所提供的所有布局'),
    );
  }
}

class TabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new TabBarApp()),
        );
      },
      child: Text('TabBar'),
    );
  }
}

class Svg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new SvgApp()),
        );
      },
      child: Text('Svg'),
    );
  }
}

class Temp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new TempApp()),
        );
      },
      child: Text('Temp'),
    );
  }
}

class Debug extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new DebugApp()),
        );
      },
      child: Text('调试 Flutter Apps'),
    );
  }
}

class ForAndroid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new FlutterPlugin()),
        );
      },
      child: Text('Flutter For Android'),
    );
  }
}

class FlutterPlugin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => FlutterPluginDemo()),
        );
      },
      child: Text('Flutter 插件'),
    );
  }
}

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => OtherDemo()),
        );
      },
      child: Text("其他"),
    );
  }
}

class Widgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => WidgetsMenu()),
        );
      },
      child: Text('Widgets 目录'),
    );
  }
}

//=================== footer =======================
class DebugPaint extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new DebugPaintState();
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
    return new RaisedButton(
      onPressed: _changeDebugPaint,
      child: Text(_str),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new FirstFlutter(),
        DartDemo(),
        new Cart(),
        new FontsFamily(),
        new Gesture(),
        new Images(),
        new IO(),
        new JsonSerializable(),
        new Layout(),
        new LayoutMethod(),
        new List(),
        new NavigatorItem(),
        new Network(),
        new NetworkHttp(),
        new PlatformChannel(),
        new StateManager(),
        new TextInput(),
        new CustomTheme(),
        new UrlLauncher(),
        new WidgetFramework(),
        new Animation(),
        new WidgetLayout(),
        new TabBar(),
        new Svg(),
        new Temp(),
        new Debug(),
        new ForAndroid(),
        FlutterPlugin(),
        Widgets(),
        Other(),
        //===========footer============
        new DebugPaint()
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Flutter"),
          ),
          body: new MainPage()),
    );
  }
}
