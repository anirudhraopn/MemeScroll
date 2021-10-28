import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class MemePicture extends StatelessWidget {
  // const MemePicture({ Key? key }) : supe;r(key: key);

  final String url;
  MemePicture(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Hero(
            tag: url,
            child: PhotoView(
              imageProvider: NetworkImage(url),
            ),
          ),
        ),
      ),
    );
  }
}
