import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor;
  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  
  @override
  Widget build(BuildContext context) {

    var caminhoimagem;
    if (widget.valor == "cara")
       caminhoimagem = "imagens/moeda_cara.png";
    else 
       caminhoimagem = "imagens/moeda_coroa.png";           

    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body: Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(caminhoimagem),
                GestureDetector(
                  onTap :() {
                    Navigator.pop(context);
                  },                  
                  
                  child: Image.asset('imagens/botao_voltar.png')
                )
                
        ]
        )
        )
        );
  }
}