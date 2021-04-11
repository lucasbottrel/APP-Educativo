import 'package:flutter/material.dart';

class PaginaNumeros extends StatefulWidget {
  @override
  _PaginaSobreAppState createState() => _PaginaSobreAppState();
}

class _PaginaSobreAppState extends State<PaginaNumeros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabuada"),
      ),
      body: Image.asset('assets/tabuada.png'),
      );
  }
}
