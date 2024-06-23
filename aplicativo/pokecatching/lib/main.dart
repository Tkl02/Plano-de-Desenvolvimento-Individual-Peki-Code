import 'package:flutter/material.dart';
import 'package:pokecatching/view/homepage.dart';
import 'package:pokecatching/view/pokepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter MVC navigation',
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/pokepage': (context) => PokePage(),
      },
    );
  }
}
