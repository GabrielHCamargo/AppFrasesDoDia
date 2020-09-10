import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _frases = 'Clique em "Nova Frase" para gerar a frase de hoje!';
  var frases = [
    'Já que os bons momentos da vida sempre passam rápido, faço o possível para que sejam inesquecíveis e acompanhados de muitos sorrisos.',
    'A vida não é para ser entendida, apenas vivida, e dela devemos aproveitar cada dia ao máximo, pois não sabemos qual desses dias será o último.',
    'Os melhores momentos na vida são como os arcos-íris: aparecem quando você menos espera.',
    'Jamais deixe que a sua felicidade dependa dos outros. Eles não deixariam de ser felizes por você.',
    'Nada sai da nossa vida sem antes nos ensinar o que precisamos aprender.',
    'Se um dia tiver que escolher entre o mundo e o amor lembre-se: se escolher o mundo ficará sem o amor, mas se escolher o amor com ele você conquistará o mundo.',
    'Dona de mil defeitos vivo orgulhosa de ser quem sou, de perceber para onde quero ir e de saber de onde vim.',
    'Às vezes sou forte, outras não; há dias que sou feliz e outros tento ser; sou assim, fiel a quem sou!'
  ];

  void geradorFrases() {
    int numeros = Random().nextInt(8);
    setState(() {
      _frases = frases[numeros];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do Dia'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: Image.asset('assets/logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              _frases,
              style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: FlatButton(
            onPressed: () {
              geradorFrases();
            },
            child: Text(
              'Nova Frase',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          )),
    );
  }
}
