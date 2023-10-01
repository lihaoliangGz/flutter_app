import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketExample extends StatefulWidget {
  const WebSocketExample({super.key});

  @override
  State<WebSocketExample> createState() => _WebSocketExampleState();
}

class _WebSocketExampleState extends State<WebSocketExample> {
  final channel = WebSocketChannel.connect(
    Uri.parse('wss://echo.websocket.events'),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("使用WebSockets通信（web_socket_channel）"),
      ),
      body: StreamBuilder(
        stream: channel.stream,
        builder: (context, snapshot) {
          return Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              snapshot.hasData ? snapshot.data.toString() : "未收到数据",
            ),
          );
        },
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          send();
        },
        icon: Icon(
          Icons.send,
        ),
      ),
    );
  }

  void send() {
    channel.sink.add('Hello!');
  }
}
