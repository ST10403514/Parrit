import 'package:flutter/material.dart';
import 'package:parrit/home_page.dart';
import 'package:parrit/welcome.dart';

void main() {
  runApp(const ParritApp());
}

class ParritApp extends StatelessWidget {
  const ParritApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Parrit - personal notifications',
        theme: ThemeData(fontFamily: 'Lato'),
        initialRoute: '/welcome', // Set initial route to welcome page
        routes: {
          '/welcome': (context) =>
              const WelcomePage(), // Define welcome page route
          '/home': (context) => const ParritHomePage(),
        });
  }
}
