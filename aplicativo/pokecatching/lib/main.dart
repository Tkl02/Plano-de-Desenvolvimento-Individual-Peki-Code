import 'package:flutter/material.dart';

void main() {
  runApp(PokeApp());
}

class PokeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('POKE NATION'),
        backgroundColor: const Color.fromARGB(255, 1, 141, 255),
      ),
      body: const Center(
          child: Text(
        'hello world',
      )),
      backgroundColor: const Color.fromARGB(249, 255, 0, 0),
    );
  }
}
