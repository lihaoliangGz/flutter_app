import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SwitchState();
  }
}

class _SwitchState extends State<SwitchExample> {
  bool light = false;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Switch Sample')),
        body: Center(
          child: Switch(
            value: light,
            thumbIcon: thumbIcon,
            activeColor: Colors.green,
            onChanged: (value) {
              setState(() {
                light = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
