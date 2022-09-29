import 'package:coffe_ui/pages/detail_page.dart';
import 'package:coffe_ui/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        primarySwatch: Colors.orange,
      ),
      // theme: ThemeData.dark(useMaterial3: true),
      home: HomePage(),
    );
  }
}
