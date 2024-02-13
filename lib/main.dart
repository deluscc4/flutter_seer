import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: VidenteVirtualPage(),
  ));
}

class VidenteVirtualPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff332B25),
      appBar: AppBar(
        backgroundColor: Colors.brown[800],
        title: Text('Vidente Virtual'),
      ),
      body: Vidente(),
    );
  }
}

class Vidente extends StatefulWidget {
  @override
  State<Vidente> createState() => _VidenteState();
}

class _VidenteState extends State<Vidente> {
  int imageNumber = 1;

  void mostraSorte() {
    setState(() {
      imageNumber = Random().nextInt(5) + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            mostraSorte();
          },
          child: Image.asset('imagens/vidente$imageNumber.png')),
    );
  }
}
