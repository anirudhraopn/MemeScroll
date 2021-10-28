import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memes_scroll/providers/meme_data.dart';
import 'package:provider/provider.dart';

import './pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => MemesData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
              color: Colors.yellow,
              fontFamily: GoogleFonts.italiana().fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          primarySwatch: Colors.red,
          accentColor: Colors.yellow,
          scaffoldBackgroundColor: Colors.red[100],
          // brightness:
        ),
        darkTheme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.amber,
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
              color: Colors.amber,
              fontFamily: GoogleFonts.italiana().fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          scaffoldBackgroundColor: Colors.black,
        ),
        home: HomePage(),
      ),
    );
  }
}
