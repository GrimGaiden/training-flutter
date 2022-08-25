import 'package:flutter/material.dart';

class PruebaEnrutado1 extends StatefulWidget {
  const PruebaEnrutado1({Key? key}) : super(key: key);

  @override
  State<PruebaEnrutado1> createState() => _PruebaEnrutado1();
}

class _PruebaEnrutado1 extends State<PruebaEnrutado1> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enrutado 1"),
      ),
      body: const Center(
        child: Text("Pantalla 1"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: "Pantalla 1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: "Pantalla 2",
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
