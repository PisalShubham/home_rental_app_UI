import 'package:flutter/material.dart';
// import 'package:home_rental_app/page_3.dart';
import 'package:home_rental_app/page_1.dart';
// import 'page_2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
