import 'package:flutter/material.dart';

class PaginaLetras extends StatefulWidget {
  @override
  _PaginaSobreAppState createState() => _PaginaSobreAppState();
}

class _PaginaSobreAppState extends State<PaginaLetras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alfabeto"),
      ),
      body:
        Image.asset('assets/alfabeto.png')
      );
  }
}
