import 'package:flutter/material.dart';

class PantallaCinco extends StatelessWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Fondo azul del AppBar
        title: const Center(
          child: Text(
            'Pantalla 5',
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
            const SizedBox(height: 20), // Space between buttons
            ElevatedButton(
              child: const Text('Show Alert Dialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'),
                      ),
                    ],
                    title: const Text('Flutter Mapp'),
                    contentPadding: const EdgeInsets.all(20.0),
                    content: const Text('This is the Alert Dialog'),
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
