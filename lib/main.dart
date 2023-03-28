import 'package:flutter/material.dart';
import './testing1.dart';
import './testing2.dart';
import './testing3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostTest3(),
    );
  }
}


