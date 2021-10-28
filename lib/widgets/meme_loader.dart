import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './memes.dart';
import '../providers/meme_data.dart';

class MemeLoader extends StatelessWidget {
  const MemeLoader({
    Key? key,
    required this.memeData,
  }) : super(key: key);

  final MemesData memeData;

  @override
  Widget build(BuildContext context) {
    Provider.of<MemesData>(context, listen: false).fetchData();
    return Scrollbar(
      child: Consumer<MemesData>(
        builder: (ctx, memesData, ch) => ListView.builder(
          itemCount: memeData.items.length,
          itemBuilder: (ctx, i) => Column(
            children: [
              Card(
                child: Memes(
                  memeData.items[i],
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
