import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NetworkExample extends StatefulWidget {
  const NetworkExample({super.key});

  @override
  State<NetworkExample> createState() => _NetworkExampleState();
}

class _NetworkExampleState extends State<NetworkExample> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("http 请求"),
        ),
        body: new Center(
          child: new FutureBuilder(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("${snapshot.data?.userId}"
                      "\n"
                      "${snapshot.data?.id}"
                      "\n"
                      "${snapshot.data?.title}"
                      "\n"
                      "${snapshot.data?.body}"),
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

class Album {
  final int userId;
  final int id;
  final String title;
  final String body;

  Album(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory Album.fromJson(Map<String, dynamic> json) {
    return new Album(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']);
  }
}

Future<Album> fetchPost() async {
  final response = await http.get(
    Uri.parse("https://jsonplaceholder.typicode.com/posts/1"),
    headers: {
      HttpHeaders.authorizationHeader: "",
    },
  );
  if (response.statusCode == 200) {
    return new Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
