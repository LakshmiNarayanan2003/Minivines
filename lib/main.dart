import 'package:flutter/material.dart';
import 'package:minivines/screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MiniVines',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
