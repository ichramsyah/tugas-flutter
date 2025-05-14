import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/portfolio_screen.dart';
import 'screens/contact_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/portfolio': (context) => PortfolioPage(),
        '/contact': (context) => ContactPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
