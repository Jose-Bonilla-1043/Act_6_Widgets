import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Fondo azul del AppBar
        title: const Center(
          child: Text(
            'Pantalla inicial',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra los botones verticalmente
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: const Text('AboutDialog'),
            ),
            const SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text('AboutListTile'),
            ),
            const SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla4');
              },
              child: const Text('AbsorbPointer'),
            ),
            const SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla5');
              },
              child: const Text('AlertDialog'),
            ),
            const SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla6');
              },
              child: const Text('Aling '),
            ),
            const SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla7');
              },
              child: const Text('AnimatedAlign'),
            ),
            const SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla8');
              },
              child: const Text('AnimatedBuider'),
            ),
            const SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla9');
              },
              child: const Text('AnimatedCrossFade'),
            ),
            const SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla10');
              },
              child: const Text('AnimatedDefaultTextStyle'),
            ),
            const SizedBox(height: 20), // Espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla11');
              },
              child: const Text('AnimatedContainer'),
            ),
          ],
        ),
      ),
    );
  }
}
