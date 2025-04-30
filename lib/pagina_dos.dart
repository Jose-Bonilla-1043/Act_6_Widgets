import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Fondo azul del AppBar
        title: const Center(
          child: Text(
            'Pantalla 2',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Space between buttons
            ElevatedButton(
              child: const Text('Show About Dialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const AboutDialog(
                    applicationIcon: FlutterLogo(),
                    applicationLegalese: 'Legalese',
                    applicationName: 'Flutter App',
                    applicationVersion: 'version 1.0.0',
                    children: [
                      Text('This is a text created by Flutter Mapp'),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
