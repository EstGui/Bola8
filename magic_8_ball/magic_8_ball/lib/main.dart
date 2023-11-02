import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SorteioNumeros(),
        ),
        backgroundColor: Color.fromARGB(255, 38, 172, 250)
      ),
    );
  }
}

class SorteioNumeros extends StatefulWidget {
  @override
  _SorteioNumerosState createState() => _SorteioNumerosState();
}

class _SorteioNumerosState extends State<SorteioNumeros> {
  int sort = 0;

  List<String> images = [
    '../images/ball1.png',
    '../images/ball2.png',
    '../images/ball3.png',
    '../images/ball4.png',
    '../images/ball5.png'
  ];

  void escolheImagem() {
    setState(() {
      sort = Random().nextInt(images.length);
    });
  }

 @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: escolheImagem,
          child: Image.asset(images[sort], width: 200, height: 200),
        )
      ],
    );
  }
}