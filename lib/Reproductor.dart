import 'package:flutter/material.dart';

class Reproductor extends StatefulWidget {
  const Reproductor({super.key});

  @override
  State<Reproductor> createState() => _ReproductorState();
}

class _ReproductorState extends State<Reproductor> {

  bool reproduciendo = false;
  double nivelVolumen = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: const Color(0xFF181818),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Icon(Icons.music_note, color: Colors.white),
              SizedBox(width: 10),
              Text("Rock 80s Mix", style: TextStyle(color: Colors.white)),
            ],
          ),

          IconButton(
            iconSize: 50,
            icon: Icon(
              reproduciendo 
                ? Icons.pause_circle_filled
                :Icons.play_circle_fill,
              color: Colors.green,
            ),

            onPressed: () {
              setState(() {
                reproduciendo = !reproduciendo;
              });
              print("Estado reproduciendo: $reproduciendo");
            },
          ),

          Row(
            children: [

              const Icon(Icons.volume_up, color: Colors.grey, size: 20),

              Slider(
                value: nivelVolumen,
                min: 0,
                max: 100,
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                onChanged: (nuevoValor) {
                  setState(() {
                    nivelVolumen = nuevoValor;
                  });
                  print("Volumen al: $nivelVolumen");
                },
              ),
            ],
          )

        ],
      ),
    );
  }
}