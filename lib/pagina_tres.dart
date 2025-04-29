import 'package:flutter/material.dart';

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  int _counter = 0;
  bool _containerSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pantalla Tres Miscles",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          ),
          // Contador original
          const SizedBox(height: 30),
          // AnimatedContainer agregado
          GestureDetector(
            onTap: () {
              setState(() {
                _containerSelected = !_containerSelected;
              });
            },
            child: Center(
              child: AnimatedContainer(
                width: _containerSelected ? 200.0 : 100.0,
                height: _containerSelected ? 100.0 : 200.0,
                color: _containerSelected ? Colors.blueGrey : Colors.white,
                alignment: _containerSelected
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 75),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
