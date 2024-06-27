import 'package:flutter/material.dart';

class PokePage extends StatefulWidget {
  @override
  _PokePageState createState() => _PokePageState();
}

class _PokePageState extends State<PokePage> {
  final TextEditingController _controller = TextEditingController();
  double _selectedValue = 0;
  double _selectedValueStatus = 0;
  int _selectedPokeball = -1;
  int _selectedStatus = -1;

  void _onImageTap(double value, int index) {
    setState(() {
      _selectedValue = value;
      _selectedPokeball = index;
    });
    print('Selected value: $_selectedValue');
  }

  void _onImageTapStatus(double valueStatus, int index) {
    setState(() {
      _selectedValueStatus = valueStatus;
      _selectedStatus = index;
    });
    print('Selected value status: $_selectedValueStatus');
  }

  void _calculateAndShowResult() {
    final inputValue = double.tryParse(_controller.text) ?? 0;
    final result = _selectedValue * _selectedValueStatus * inputValue;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Chance de Captura',
            style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'Customfont',
                shadows: [
                  Shadow(
                      offset: Offset(2.0, 1.0),
                      blurRadius: 2.0,
                      color: Color.fromARGB(255, 0, 120, 200))
                ],
                fontSize: 26.0),
          ),
          content: Text(
            '${result.toStringAsFixed(2)}\%',
            style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'Customfont',
                shadows: [
                  Shadow(
                      offset: Offset(2.0, 1.0),
                      blurRadius: 2.0,
                      color: Color.fromARGB(255, 0, 120, 200))
                ],
                fontSize: 36.0),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
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
                spreadRadius: 3,
                blurRadius: 0.1,
                offset: Offset(-1, 3),
              )
            ],
          ),
          width: 345,
          height: 680,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'Rate catching of pokemon',
                style: TextStyle(
                  color: Colors.yellow,
                  fontFamily: 'Customfont',
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 1.0),
                      blurRadius: 2.0,
                      color: Color.fromARGB(255, 0, 120, 200),
                    )
                  ],
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 250,
                child: TextField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Cat rate',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Select Pokeball',
                style: TextStyle(
                  color: Colors.yellow,
                  fontFamily: 'Customfont',
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 1.0),
                      blurRadius: 2.0,
                      color: Color.fromARGB(255, 0, 120, 200),
                    )
                  ],
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildPokeballButton(
                        1.0, 0, 'assets/bottons/pokeballred.png'),
                    _buildPokeballButton(
                        1.5, 1, 'assets/bottons/pokeballb.png'),
                    _buildPokeballButton(
                        2.0, 2, 'assets/bottons/pokeballblu.png'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Select Status',
                style: TextStyle(
                  color: Colors.yellow,
                  fontFamily: 'Customfont',
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 1.0),
                      blurRadius: 2.0,
                      color: Color.fromARGB(255, 0, 120, 200),
                    )
                  ],
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildStatusButton(1.5, 0, 'assets/bottons/queimado.png'),
                    _buildStatusButton(1.5, 1, 'assets/bottons/paralyze.png'),
                    _buildStatusButton(2.5, 2, 'assets/bottons/sleep.png'),
                    _buildStatusButton(2.5, 3, 'assets/bottons/congelado.png'),
                    _buildStatusButton(1.5, 4, 'assets/bottons/veneno.png'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _calculateAndShowResult,
                child: Text('Calcular'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPokeballButton(double value, int index, String imagePath) {
    return GestureDetector(
      onTap: () => _onImageTap(value, index),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: _selectedPokeball == index ? Colors.red : Colors.transparent,
            width: 3.0,
          ),
        ),
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Image.asset(
          imagePath,
          width: 100,
          height: 100,
        ),
      ),
    );
  }

  Widget _buildStatusButton(double valueStatus, int index, String imagePath) {
    return GestureDetector(
      onTap: () => _onImageTapStatus(valueStatus, index),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: _selectedStatus == index ? Colors.red : Colors.transparent,
            width: 3.0,
          ),
        ),
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Image.asset(
          imagePath,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
