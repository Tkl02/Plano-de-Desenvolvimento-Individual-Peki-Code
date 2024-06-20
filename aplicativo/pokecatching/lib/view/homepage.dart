import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/icon/icon.png'),
            SizedBox(height: 20), // Espaço entre a imagem e o botão
            Container(
              width: 240.0, // Largura desejada
              height: 110.0, // Altura desejada
              child: FittedBox(
                child: RawMaterialButton(
                  fillColor: Colors.red,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    'Click here',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontFamily: 'Customfont',
                        shadows: [Shadow(offset: Offset(1.0, 1.0),blurRadius: 2.0, color: Color.fromARGB(255, 0, 120, 200))],
                        fontSize: 18.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
