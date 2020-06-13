import 'package:flutter/material.dart';
import './Screens/Home.dart';
void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ergo",
      home: Home(),
    );
  }
}
