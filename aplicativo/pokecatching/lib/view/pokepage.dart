
import 'package:flutter/material.dart';

class PokePage extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 0, 0),
      body: Center(
        child: Container(
          width: 345,
          height: 680,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(children: [
            Text('Rate cating of pokemon'),
            //TODO CRIAR BOX DE INPUT 
            Text('Select Pokeball'),
            //TODO CRIAR SELEÇÃO DE POKE BOLA + FUNCIONALIDADE BOTÃO E ATRIBUIR VALORES.
            Text('Select Status'),
            //TODO CRIAR SELEÇÃO DE STATUS + FUNCIONALIDADE BOTÃO E ATRIBUIR VALORES.
          ],
          
          ),
        ),
      ),
    );
  }
}
