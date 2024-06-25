import 'dart:ffi';

import 'package:flutter/material.dart';

class PokePage extends StatefulWidget {
  @override
  _PokePageState createState() => _PokePageState();
}

class _PokePageState extends State<PokePage> {
  int _selectedValue = 0;

  void _onImageTap(int value) {
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
              Text('Rate cating of pokemon'),
              //TODO

              Text('Select Pokeball'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => _onImageTap(1),
                    child: Image.asset(
                      'assets/bottons/pokeballred.png',
                      width: 80,
                      height: 80,
                    ),
                  )
                ],
              ),
              Text('Select Status'),
              //TODO CRIAR SELEÇÃO DE STATUS + FUNCIONALIDADE BOTÃO E ATRIBUIR VALORES.
            ],
          ),
        ),
      ),
    );
  }
}
