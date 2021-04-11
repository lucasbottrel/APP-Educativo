import 'dart:io';

import 'package:app_educativo/pages/PaginaNumeros.dart';
import 'package:flutter/material.dart';

import 'PaginaLetras.dart';


class PaginaInicial extends StatefulWidget {
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  void _abrirLetras() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PaginaLetras())
    );
  }

  void _abrirNumeros() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => PaginaNumeros())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogos Educativos"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Para acessar os jogos clique nas imagens", textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirLetras,
                    child: Image.asset("assets/abc.png",height: 100, width: 100),
                  ),
                  GestureDetector(
                    onTap: _abrirNumeros,
                    child: Image.asset("assets/numeros.png",height: 100, width: 100),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
