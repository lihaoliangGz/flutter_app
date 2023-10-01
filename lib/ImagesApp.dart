import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

const String temp =
    "https://img1.baidu.com/it/u=1890390320,3399874998&fm=253&fmt=auto&app=120&f=JPEG?w=1422&h=800";
///加载网络上的图片
class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.blue[200],
      child: Center(
        child: new Image.network(temp),
      ),
    );
  }
}

///用占位符淡入图片
class PlaceHolderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.green[200],
      child: Center(
        child: new Stack(
          children: <Widget>[
            // new Center(
            //   child: new CircularProgressIndicator(),
            // ),
            new Center(
              child: new FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage, image: temp),
            ),
          ],
        ),
      ),
    );
  }
}

///使用缓存图片
class CacheNetworkImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.red[200],
      child: new Center(
        child: new CachedNetworkImage(imageUrl: temp),
      ),
    );
  }
}

class ImagesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';
    return new MaterialApp(
        title: title,
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text(title),
            ),
            body: ListView(
              children: <Widget>[
                ImageDemo(),
                PlaceHolderImage(),
                CacheNetworkImageDemo()
              ],
            )));
  }
}
