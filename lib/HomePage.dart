import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/AnimationApp.dart';
import 'package:flutterapp/CartApp.dart';
import 'package:flutterapp/FirstFlutterApp.dart';
import 'package:flutterapp/IOApp.dart';
import 'package:flutterapp/ImagesApp.dart';
import 'package:flutterapp/JsonSerializableApp.dart';
import 'package:flutterapp/LayoutApp.dart';
import 'package:flutterapp/LayoutMethodApp.dart';
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
import 'package:flutterapp/fonts_family_app.dart';
import 'package:flutterapp/gesture/gesture__app.dart';
import 'package:flutterapp/layout_constraint_example.dart';
import 'package:flutterapp/material/material_design_app.dart';
import 'package:flutterapp/other_demo.dart';
import 'package:flutterapp/permission_demo.dart';
import 'package:flutterapp/plugin/flutter_plugin.dart';
import 'package:flutterapp/reload_page.dart';
import 'package:flutterapp/status_bar_page.dart';
import 'package:flutterapp/svg_app.dart';
import 'package:flutterapp/temp/temp_app.dart';
import 'package:flutterapp/test_debug/TestDebugApp.dart';

import 'TabBarApp.dart';
import 'widgets/widgets_app.dart' as WidgetsApp;

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

class NavigatorItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NavigatorApp()),
        );
      },
      child: Text('导航'),
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
          MaterialPageRoute(builder: (context) => NetworkApp()),
        );
      },
      child: Text('网络'),
    );
  }
}

class NetworkHttp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NetworkHttpApp()),
        );
      },
      child: Text('网络和Http'),
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

class UrlLauncher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UrlLauncherApp()),
        );
      },
      child: Text('启动浏览器'),
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
          MaterialPageRoute(builder: (context) => WidgetsApp.WidgetsApp()),
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

class Svg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SvgApp()),
        );
      },
      child: Text('Svg'),
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

class Permission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PermissionDemo()),
        );
      },
      child: Text("权限"),
    );
  }
}

class MaterialDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MaterialDesignApp()),
        );
      },
      child: Text("Material Design"),
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
        NavigatorItem(),
        Network(),
        NetworkHttp(),
        PlatformChannel(),
        StateManager(),
        TextInput(),
        CustomTheme(),
        UrlLauncher(),
        WidgetFramework(),
        Animation(),
        TabBar(),
        Svg(),
        Temp(),
        Debug(),
        ForAndroid(),
        FlutterPlugin(),
        Permission(),
        MaterialDesign(),
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
