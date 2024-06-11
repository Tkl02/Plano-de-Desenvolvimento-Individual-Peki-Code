import 'package:flutter/material.dart';

void main() {
  runApp(PokeApp());
}

class PokeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'hello world',
      textDirection: TextDirection.rtl,
    );
  }
}
