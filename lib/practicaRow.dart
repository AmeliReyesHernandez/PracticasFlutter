import 'package:flutter/material.dart';

class practicaRow extends StatelessWidget {
  const practicaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manejo de Filas (Row)"),
      ),

      body: Row(
        children: [

          Expanded(
            child: Container(
              color: Colors.blue[200],
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home, size: 40),
                    Text("Inicio")
                  ],
                ),
              ),
            ),
          ),

          Expanded(
            child: Container(
              color: Colors.grey[300],
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.settings, size: 40),
                    Text("Ajustes")
                  ],
                ),
              ),
            ),
          ),

          Expanded(
            child: Container(
              color: Colors.green[200],
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 40),
                    Text("Perfil")
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}