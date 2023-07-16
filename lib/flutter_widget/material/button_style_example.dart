import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class ButtonStyleExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: Column(
        children: [
          // 按下时颜色变化
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.5);
                  }
                  return null; // Use the component's default.
                },
              ),
            ),
            child: const Text('Fly me to the moon'),
            onPressed: () {
              // ...
            },
          ),

          // 设置按钮的所有状态下的backgroundColor
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
            ),
            child: const Text('Let me play among the stars'),
            onPressed: () {
              // ...
            },
          ),

          // 覆盖TextButton的默认文本和图标颜色，以及其覆盖颜色，
          // 并具有所有标准不透明度调整的按下、聚焦和悬停状态
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.green),
            child: const Text('Let me see what spring is like'),
            onPressed: () {
              // ...
            },
          ),

          // MaterialStateProperty.resolveWith
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.focused) &&
                    states.contains(MaterialState.hovered)) {
                  return Colors.yellow;
                } else if (states.contains(MaterialState.focused)) {
                  return Colors.green[200];
                } else if (states.contains(MaterialState.hovered)) {
                  return Colors.green[200];
                } else if (states.contains(MaterialState.pressed)) {
                  return Colors.blue;
                } else {
                  return Colors.transparent;
                }
              }),
            ),
            onPressed: () {},
            child: Text('MaterialStateProperty.resolveWith'),
          ),

          // 继承MaterialStateProperty，自定义
          TextButton(
            style: ButtonStyle(
              backgroundColor:MyButtonBackgroundColor(context),
            ),
            onPressed: () {},
            child: Text('Custom MaterialStateProperty'),
          ),
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return 'ButtonStyle';
  }
}

//自定义 MaterialStateProperty
class MyButtonBackgroundColor extends MaterialStateProperty<Color?> {
  final BuildContext context;

  MyButtonBackgroundColor(this.context);

  @override
  Color? resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.focused) &&
        states.contains(MaterialState.hovered)) {
      return Colors.yellow;
    } else if (states.contains(MaterialState.focused)) {
      return Colors.blue;
    } else if (states.contains(MaterialState.hovered)) {
      return Colors.blue;
    } else if (states.contains(MaterialState.pressed)) {
      return Colors.green;
    }
    return Colors.transparent;
  }
}
