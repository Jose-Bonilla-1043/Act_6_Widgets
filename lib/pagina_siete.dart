import 'package:flutter/material.dart';

class PantallaSiete extends StatelessWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'Pantalla 7',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Original content

          // Added space between widgets
          const SizedBox(height: 20),

          // Expanded widget containing the AnimatedAlign example
          const Expanded(
            child: Widget006(),
          ),
        ],
      ),
    );
  }
}

// AnimatedAlign Widget
class Widget006 extends StatefulWidget {
  const Widget006({Key? key}) : super(key: key);

  @override
  State<Widget006> createState() => _Widget006State();
}

class _Widget006State extends State<Widget006> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 250.0,
          color: Colors.blueGrey,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}
