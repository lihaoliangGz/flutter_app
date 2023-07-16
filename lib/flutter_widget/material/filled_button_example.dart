import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class FilledButtonExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // FilledButton()
          Column(children: <Widget>[
            const SizedBox(height: 30),
            const Text('Filled'),
            const SizedBox(height: 15),
            FilledButton(
              onPressed: () {},
              child: const Text('Enabled'),
            ),
            const SizedBox(height: 30),
            const FilledButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
          ]),

          const SizedBox(width: 15),

          // FilledButton.tonal
          Column(
            children: <Widget>[
              const SizedBox(height: 30),
              const Text('Filled tonal'),
              const SizedBox(height: 15),
              FilledButton.tonal(
                onPressed: () {},
                child: const Text('Enabled'),
              ),
              const SizedBox(height: 30),
              const FilledButton.tonal(
                onPressed: null,
                child: Text('Disabled'),
              ),
            ],
          ),

          const SizedBox(width: 15),

          //
          Column(
            children: [
              const SizedBox(height: 30),
              const Text('Filled tonal'),
              const SizedBox(height: 15),
              FilledButton.tonalIcon(
                onPressed: () {},
                icon: Icon(Icons.access_time),
                label: const Text('Enabled'),
              ),
              const SizedBox(height: 30),
              FilledButton.tonalIcon(
                onPressed: null,
                icon: Icon(Icons.access_time),
                label: const Text('Disabled'),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return 'FilledButton';
  }
}
