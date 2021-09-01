import 'package:flutter/material.dart';
import 'package:projetoap2/CeCResultado.dart';
import 'dart:math';

class Tela_CaraeCoroa extends StatefulWidget {
  @override
  _Tela_CaraeCoroaState createState() => _Tela_CaraeCoroaState();
}

class _Tela_CaraeCoroaState extends State<Tela_CaraeCoroa> {
  void _exibirResultado() {

    var opcoes = ["coroa", "cara"];
    var numero = Random().nextInt(opcoes.length);
    var resultado = opcoes[numero];

    Navigator.push(context,
    MaterialPageRoute(
      builder : (contexto) => Resultado(resultado)
    ));
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
          Image.asset("imagens/logo.png"),
          GestureDetector(onTap: _exibirResultado,
           child: Image.asset('imagens/botao_jogar.png'))
        ])));
  }
}
