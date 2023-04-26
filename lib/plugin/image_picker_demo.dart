import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImagePickerDemoState();
  }
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  File? _image;

  //选择单张图片
  Future getImage() async {
    final picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    print("image: ${image?.path}");
    setState(() {
      _image = File(image?.path ?? "");
    });
  }

  //选择多张图片
  Future getMultiImage() async {
    final picker = ImagePicker();
    final List<XFile> images = await picker.pickMultiImage();
    images.forEach((img) {
      print("image: ${img.path}");
    });
  }

  //选择视频
  Future getVideo() async {
    final picker = ImagePicker();
    final XFile? video = await picker.pickVideo(source: ImageSource.gallery);
    print("video: ${video?.path}");
  }

  Future<void> getLostData() async {
    final ImagePicker picker = ImagePicker();
    final LostDataResponse response = await picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    final List<XFile>? files = response.files;
    files?.forEach((xFile) {
      print("xFile: ${xFile.path}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: _image == null
                  ? Text('No image selected.')
                  : Image.file(_image!),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                getMultiImage();
              },
              child: Text("选择多张图片")),
          ElevatedButton(
              onPressed: () {
                getVideo();
              },
              child: Text("选择视频")),
          ElevatedButton(
              onPressed: () {
                getLostData();
              },
              child: Text("getLostData")),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
