import 'package:flutter/material.dart';
import 'package:memes_scroll/pages/meme_picture.dart';

class Memes extends StatelessWidget {
  // const Memes({ Key? key }) : super(key: key);
  final String url;

  Memes(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => MemePicture(url),
            ),
          );
        },
        child: Hero(
          tag: url,
          child: Image.network(
            url,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
