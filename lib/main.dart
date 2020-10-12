import 'package:coffetogo/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CoffeToGoApp());
}

class CoffeToGoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Varela'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
