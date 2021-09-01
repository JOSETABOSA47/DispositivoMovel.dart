import 'package:flutter/material.dart';
import 'package:projetoap2/Tela_Bitcoin.dart';
import 'package:projetoap2/Tela_Cep.dart';
import 'package:projetoap2/Tela_CaraeCoroa.dart';
import 'package:projetoap2/CeCResultado.dart';
import 'package:projetoap2/via_cep_service.dart';
import 'package:projetoap2/Tela_Jokenpo.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirCep() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Tela_Cep()));
  }

  void _abrirBitcoin() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Tela_Bitcoin()));
  }

  void _abrirCaraeCoroa() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Tela_CaraeCoroa()));
  }

  void _abrirJokenpo() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Tela_Jokenpo()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("projetoap2"), backgroundColor: Colors.green),
        body: Container(
            padding: EdgeInsets.only(top: 2),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Image.asset("imagens/logofaculdadecdl.png"),
                  GestureDetector(onTap: _abrirCep, child: Image.asset("imagens/ceplugar.png")),
                  GestureDetector(onTap: _abrirBitcoin, child: Image.asset("imagens/bitcoin.png")),
                  GestureDetector(onTap: _abrirCaraeCoroa, child: Image.asset("imagens/jogos.png")),
                  GestureDetector(onTap: _abrirCaraeCoroa, child: Image.asset("imagens/jokenpo.png")),
                ])));
  }
}
