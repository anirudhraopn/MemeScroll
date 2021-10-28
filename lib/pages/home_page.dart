import 'package:flutter/material.dart';

import '../providers/meme_data.dart';
import '../widgets/meme_loader.dart';
import '../widgets/memes.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    final memeData = Provider.of<MemesData>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MemeScroll',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
        // titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        height: (mediaQuery.height -
            (AppBar().preferredSize.height) -
            (MediaQuery.of(context).padding.top)),
        width: double.infinity,
        child:
            // snapshot.connectionState == ConnectionState.waiting
            //     ? Center(
            //         child: CircularProgressIndicator(),
            //       )
            //     :
            MemeLoader(memeData: memeData),
      ),
    );
  }
}
