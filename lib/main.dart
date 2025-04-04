import 'package:flutter/material.dart';
import 'package:shop/pages/description_page.dart';
import 'package:shop/pages/landing_page.dart';
import 'package:shop/pages/main_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
