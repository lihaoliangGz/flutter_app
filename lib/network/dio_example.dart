import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

final dio = Dio();

class DioExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            _getHttp();
          },
          child: Text("get"),
        ),
        ElevatedButton(
          onPressed: () {
            _postHttp();
          },
          child: Text("post"),
        ),
        ElevatedButton(
          onPressed: () {
            _proxy();
          },
          child: Text("设置代理"),
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return 'Dio';
  }

  void _getHttp() async {
    var response = await dio.get('https://dart.dev');
    log('get response: \n\n$response', name: 'DioExample');
  }

  void _postHttp() async {
    var response = await dio.post('https://dart.dev');
    log('post response: \n\n$response', name: 'DioExample');
  }

  // 设置代理
  void _proxy() async {
    var dio = Dio();
    dio.httpClientAdapter = IOHttpClientAdapter(createHttpClient: () {
        final client = HttpClient();
        client.findProxy = (uri) {
          log('uri: $uri', name: 'HttpClient_uri');
          return 'PROXY 192.168.1.102:8888';
        };
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      },);
    // (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
    //   final client = HttpClient();
    //   client.findProxy = (uri) {
    //     log('uri: $uri', name: 'HttpClient_uri');
    //     return 'PROXY 192.168.1.102:8888';
    //   };
    //   client.badCertificateCallback =
    //       (X509Certificate cert, String host, int port) => true;
    //   return client;
    // };
    var response = await dio.get('https://dart.dev');
    log('get response: \n\n$response', name: 'DioExample');
  }
}
