import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

///加载网络上的图片
class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1589622878280&di=9b95a332457e02034107fc2b23c91fc2&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F14%2F75%2F01300000164186121366756803686.jpg');
  }
}

///用占位符淡入图片
class placeHolderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Center(
          child: new CircularProgressIndicator(),
        ),
        new Center(
          child: new FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1589622878280&di=9b95a332457e02034107fc2b23c91fc2&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F14%2F75%2F01300000164186121366756803686.jpg',
          ),
        ),
      ],
    );
  }
}

///使用缓存图片
class CacheNetworkImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new CachedNetworkImage(
        imageUrl:
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1589622878280&di=9b95a332457e02034107fc2b23c91fc2&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F14%2F75%2F01300000164186121366756803686.jpg',
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
            body: new CacheNetworkImageDemo())); //todo
  }
}
