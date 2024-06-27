import 'dart:ffi';

import 'package:flutter/material.dart';

class PokePage extends StatefulWidget {
  @override
  _PokePageState createState() => _PokePageState();
}

class _PokePageState extends State<PokePage> {
  double _selectedValue = 0;

  void _onImageTap(double value) {
    setState(() {
      _selectedValue = value;
    });
    print('Selected value: $_selectedValue');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 0, 0, 1),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 251, 255, 0),
                    spreadRadius: (3),
                    blurRadius: (0.1),
                    offset: Offset(-1, 3))
              ]),
          width: 345,
          height: 680,
          child: Column(
            children: [
              Text(
                'Rate cating of pokemon',
                style: TextStyle(
                    color: Colors.yellow,
                    fontFamily: 'Customfont',
                    shadows: [
                      Shadow(
                          offset: Offset(2.0, 1.0),
                          blurRadius: 2.0,
                          color: Color.fromARGB(255, 0, 120, 200))
                    ],
                    fontSize: 24.0),
              ),
              Text(
                'Select Pokeball',
                style: TextStyle(
                    color: Colors.yellow,
                    fontFamily: 'Customfont',
                    shadows: [
                      Shadow(
                          offset: Offset(2.0, 1.0),
                          blurRadius: 2.0,
                          color: Color.fromARGB(255, 0, 120, 200))
                    ],
                    fontSize: 24.0),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => _onImageTap(1.0),
                      child: Image.asset(
                        'assets/bottons/pokeballred.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _onImageTap(1.5),
                      child: Image.asset(
                        'assets/bottons/pokeballb.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _onImageTap(2.0),
                      child: Image.asset(
                        'assets/bottons/pokeballblu.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Select Status',
                style: TextStyle(
                    color: Colors.yellow,
                    fontFamily: 'Customfont',
                    shadows: [
                      Shadow(
                          offset: Offset(2.0, 1.0),
                          blurRadius: 2.0,
                          color: Color.fromARGB(255, 0, 120, 200))
                    ],
                    fontSize: 24.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => _onImageTap(1),
                    child: Image.asset(
                      'assets/bottons/queimado.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _onImageTap(1),
                    child: Image.asset(
                      'assets/bottons/paralyze.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _onImageTap(2.5),
                    child: Image.asset(
                      'assets/bottons/sleep.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _onImageTap(2.5),
                    child: Image.asset(
                      'assets/bottons/congelado.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _onImageTap(2.5),
                    child: Image.asset(
                      'assets/bottons/veneno.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
