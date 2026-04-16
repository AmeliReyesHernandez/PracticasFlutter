import 'package:flutter/material.dart';

class practicaBotones extends StatelessWidget {
  const practicaBotones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practica Botones"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                print("Guardando informacion");
              },
              child: const Text("Guardar"),
            ),

            const SizedBox(height: 20),

            OutlinedButton(
              onPressed: () {
                print("Cancelando operacion");
              },
              child: const Text("Cancelar"),
            ),

            const SizedBox(height: 20),

            TextButton(
              onPressed: () {
                print("Abriendo ayuda");
              },
              child: const Text("Ayuda"),
            ),

          ],
        ),
      ),
    );
  }
}