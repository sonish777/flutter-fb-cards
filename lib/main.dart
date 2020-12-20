import 'package:fb_cards/screens/home.dart';
import 'package:fb_cards/screens/post_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"/details": (context) => PostDetail()},
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
