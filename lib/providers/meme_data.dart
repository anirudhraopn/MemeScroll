import 'dart:convert';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MemesData with ChangeNotifier {
  List<String> _items = [];

  List<String> get items {
    return [..._items];
  }

  Future<void> fetchData() async {
    const url = 'https://www.reddit.com/r/TechMemes/.json';
    try {
      final response = await http.get(Uri.parse(url));
      final extractedData = json.decode(response.body);
      // print(extractedData['data']['children'][0]['data']['url']);
      for (int i = 0;
          i < extractedData['data']['children'].toList().length - 1;
          i++) {
        if ((extractedData['data']['children'][i]['data']['url'])
                .toString()
                .endsWith('jpg') ||
            (extractedData['data']['children'][i]['data']['url'])
                .toString()
                .endsWith('png') ||
            (extractedData['data']['children'][i]['data']['url'])
                .toString()
                .endsWith('jpeg')) {
          _items.add(extractedData['data']['children'][i]['data']['url']);
        } else {
          print(_items.length);
        }
      }
    } catch (error) {
      throw (error);
    }
    print(_items.length);
    notifyListeners();
    return;
  }
}
