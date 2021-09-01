import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Tela_Bitcoin extends StatefulWidget {
  @override
  _Tela_BitcoinState createState() => _Tela_BitcoinState();
}

class _Tela_BitcoinState extends State<Tela_Bitcoin> {
  String _preco = "0";

  void _recuperarPreco() async {
    String url = "https://blockchain.info/ticker";
    http.Response resposta = await http.get(url);

    Map<String, dynamic> retorno = json.decode(resposta.body);

    setState(() {
      _preco = retorno["BRL"]["buy"].toString();
    });

    print("Atualizar");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(32),
            child: Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Image.asset('icones/bitcoins.png'),
              Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 30),
                  child: Text("R\$ " + _preco,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))),
              RaisedButton(
                  color: Colors.yellow,
                  child: Text("Atualizar",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      )),
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                  onPressed: _recuperarPreco)
            ]))));
  }
}
