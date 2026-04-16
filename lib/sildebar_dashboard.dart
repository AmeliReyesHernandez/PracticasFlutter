import 'package:flutter/material.dart';
import 'Reproductor.dart';

class sidebar_dashboard extends StatelessWidget {
  const sidebar_dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Expanded(child: Row(children: [
          // SIDEBAR
          Container(
            width: 250,
            color: Colors.black87,
            child: Column(
              children: [

                const SizedBox(height: 50),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "MI MÚSICA",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                _crearOpcionMenu(context, Icons.home, "Inicio"),
                _crearOpcionMenu(context, Icons.search, "Buscar"),
                _crearOpcionMenu(context, Icons.library_music, "Tu Biblioteca"),

              ],
            ),
          ),

          // CONTENIDO
          Expanded(
            child: Container(
              color: Colors.grey[300],
              padding: const EdgeInsets.all(20),
              

                // AREA DE ALBUMS
                  

                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,

                      children: const [

                        CrearCardAlbum("Album 1", Colors.black),
                        CrearCardAlbum("Album 2", Colors.orange),
                        CrearCardAlbum("Album 3", Colors.purple),
                        CrearCardAlbum("Album 4", Colors.green),
                        CrearCardAlbum("Album 5", Colors.blue),
                        CrearCardAlbum("Album 6", Colors.red),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Reproductor(),
        ],
      ),
    );
  }

  // OPCIONES DEL MENU
  static Widget _crearOpcionMenu(BuildContext context, IconData icono, String texto) {
    return ListTile(
      leading: Icon(icono, color: Colors.white),
      title: Text(
        texto,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: () {

        print("Navegando a la sección: $texto");

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Entrando a $texto"),
          ),
        );

      },
    );
  }
}


// TARJETAS DE ALBUM
class CrearCardAlbum extends StatelessWidget {

  final String titulo;
  final Color color;

  const CrearCardAlbum(this.titulo, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: () {

        print("Abriendo $titulo");

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Seleccionaste $titulo"),
          ),
        );

      },

      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),

        child: Center(
          child: Text(
            titulo,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}