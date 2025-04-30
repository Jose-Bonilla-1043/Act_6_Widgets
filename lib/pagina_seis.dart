import 'package:flutter/material.dart';

class PantallaSeis extends StatelessWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'Pantalla 6',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Widget con AnimatedAlign (tamaño reducido)
          SizedBox(
            height: 200, // Altura fija más pequeña
            child: Widget006(),
          ),

          const SizedBox(height: 40), // Espacio adicional

          // Botón para regresar
        ],
      ),
    );
  }
}

// Widget con AnimatedAlign
class Widget006 extends StatefulWidget {
  const Widget006({Key? key}) : super(key: key);

  @override
  State<Widget006> createState() => _Widget006State();
}

class _Widget006State extends State<Widget006> {
  AlignmentGeometry alignment = Alignment.bottomLeft;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          alignment = alignment == Alignment.bottomLeft
              ? Alignment.topRight
              : Alignment.bottomLeft;
        });
      },
      child: Center(
        child: Container(
          height: 120.0,
          width: double.infinity,
          color: Colors.blueGrey,
          child: const Align(
            alignment: Alignment.bottomLeft,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
