import 'package:flutter/material.dart';
import 'package:parrit/home_page.dart';

void main() {
  runApp(const ParritApp());
}

class ParritApp extends StatelessWidget {
  const ParritApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parrit',
      theme: ThemeData(fontFamily: 'Lato'),
      home: const ParritHomePage(),
    );
  }
}
