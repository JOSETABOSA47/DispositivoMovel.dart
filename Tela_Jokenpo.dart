import 'package:flutter/material.dart';
import "dart:math";

class Jokenpo extends StatefulWidget {
  @override
  _JokenpoState createState() => _JokenpoState();
}

class _JokenpoState extends State<Jokenpo> {
  var _imagemApp = AssetImage("imagens/padrao.png");
  var _mensagem = "";

  void opcaoSelecionada(String escolhaUsuario) {
    var opcao = [
      "pedra",
      "papel",
      "tesoura"
    ];
    var numero = Random().nextInt(3);
    var escolhaApp = opcao[numero];

    switch (escolhaApp) {
      case "pedra":
        setState(() {
          _imagemApp = AssetImage("imagens/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          _imagemApp = AssetImage("imagens/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          _imagemApp = AssetImage("imagens/tesoura.png");
        });
        break;
    }

    // para o caso de empate
    if (escolhaUsuario == escolhaApp) {
      setState(() {
        _mensagem = "Você empatou. Tente novamente!";
      });
    }
    // para o usuário ganhar
    else if ((escolhaUsuario == "pedra" && escolhaApp == "tesoura") || (escolhaUsuario == "tesoura" && escolhaApp == "papel") || (escolhaUsuario == "papel" && escolhaApp == "pedra")) {
      setState(() {
        _mensagem = "Você venceu. Tente novamente!";
      });
    } else {
      setState(() {
        _mensagem = "Você perdeu. Tente novamente!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Jokenpo"),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
          //text
          //image
          //text
          //row (3 images)
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text("Escolha do App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Image(image: this._imagemApp),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text("Escolha uma opção abaixo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
            GestureDetector(
              onTap: () => opcaoSelecionada("pedra"),
              child: Image.asset("imagens/pedra.png", height: 100),
            ),
            GestureDetector(
              onTap: () => opcaoSelecionada("papel"),
              child: Image.asset("imagens/papel.png", height: 100),
            ),
            GestureDetector(
              onTap: () => opcaoSelecionada("tesoura"),
              child: Image.asset("imagens/tesoura.png", height: 100),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(_mensagem,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ]));
  }
}