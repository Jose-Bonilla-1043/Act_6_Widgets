import 'package:flutter/material.dart';

class PantallaNueve extends StatelessWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'Pantalla 9',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Widget009Content(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Container(), // Added empty container as child
          ),
        ],
      ),
    );
  }
}

class Widget009Content extends StatefulWidget {
  const Widget009Content({Key? key}) : super(key: key);

  @override
  State<Widget009Content> createState() => _Widget009ContentState();
}

class _Widget009ContentState extends State<Widget009Content> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              _bool = !_bool;
            });
          },
          child: const Text(
            'Switch',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 20),
        AnimatedCrossFade(
          firstChild: Container(
            width: 350,
            height: 200,
            child: Image.network(
              "https://uecluster.blob.core.windows.net/images/planetainteligente/1588506305_desiertos1400.jpg",
              fit: BoxFit.cover,
            ),
          ),
          secondChild: Container(
            width: 350,
            height: 200,
            child: Image.network(
              "https://img.freepik.com/foto-gratis/mar-tropical-hermoso-mar-playa-cielo-azul-nube-blanca-copyspace_74190-8663.jpg",
              fit: BoxFit.cover,
            ),
          ),
          crossFadeState:
              _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
      ],
    );
  }
}
