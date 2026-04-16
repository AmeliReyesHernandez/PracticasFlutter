import 'package:flutter/material.dart';
import 'package:practicaflutter/Parte2/TarjetaEmpeado.dart';


class Screem extends StatelessWidget {
  const Screem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Equipo de Trabajo")),
      body: Column(
        children: const [
          TarjetaEmpleado(nombre: "Ameli Reyes", colorFondo: Colors.indigo),
          TarjetaEmpleado(nombre: "Carlos Gómez", colorFondo: Colors.teal),
          TarjetaEmpleado(nombre: "Lucía Martínez"),
        ],)
    );
  }
}