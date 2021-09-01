import 'dart:io';

void main() {
  int pFile, pesoAlcatra, pesoPicanha,pedido,cartaoTabajara;
  double vlrFile, vlrAlcatra, vlrPicanha,vlrFileDesc,vlrAlcatraDesc,vlrPicanhaDesc,VlrTotalFile,VlrTotalAlcatra,VlrTotalPicanha;

  stdout.write('Qual carne deseja (1-File / 2-Alcatra / 3-Picanha): ');
  pedido = int.parse(stdin.readLineSync());
  
  if(pedido==1){
    stdout.write('Quantos kg de File deseja? ');
    pFile = int.parse(stdin.readLineSync());

    stdout.write('Forma de pagamento (1-Cartão Tabajara / 2-de Outros Forma): ');
    cartaoTabajara = int.parse(stdin.readLineSync());

    if(cartaoTabajara==1){
      if(pFile>5){
        vlrFile = pFile*5.80;
        vlrFileDesc = vlrFile*0.05;
        VlrTotalFile = vlrFile-vlrFileDesc;
        print(" *** CUPOM FISCAL *** ");
        print("Tipo da carne: Filé");
        print("Quantidade em kg -> " + pFile.toString()); 
        print("Valor total -> " + vlrFile.toString());
        print("Forma Pagamento -> Cartão Tabajara");
        print("desconto -> " + vlrFileDesc.toString());
        print("Valor a pagar -> " + VlrTotalFile.toString());
      }else{
        vlrFile = pFile*4.90;
        vlrFileDesc = vlrFile*0.05;
        VlrTotalFile = vlrFile-vlrFileDesc;
        print(" *** CUPOM FISCAL *** ");
        print("Tipo da carne: Filé");
        print("Quantidade em kg -> " + pFile.toString()); 
        print("Valor total -> " + vlrFile.toString());
        print("Forma Pagamento -> Cartão Tabajara");
        print("desconto -> " + vlrFileDesc.toString());
        print("Valor a pagar -> " + VlrTotalFile.toString());
      }
    }else{
        if(pFile>5){
          vlrFile = pFile*5.80;
          print(" *** CUPOM FISCAL *** ");
          print("Tipo da carne: Filé");
          print("Quantidade em kg -> " + pFile.toString()); 
          print("Valor total -> " + vlrFile.toString());
          print("Forma Pagamento -> Outros");
          print(" desconto -> 0,00 reais");
          print("Valor a pagar -> " + vlrFile.toString());
        }else{
          vlrFile = pFile*4.90;
          print(" *** CUPOM FISCAL *** ");
          print("Tipo da carne: Filé");
          print("Quantidade em kg -> " + pFile.toString()); 
          print("Valor total -> " + vlrFile.toString());
          print("Forma Pagamento -> Outros");
          print(" desconto -> 0,00 reais");
          print("Valor a pagar -> " + vlrFile.toString());
        }      
    }
  }


  else if(pedido==2){
    stdout.write('Quantos kg de Alcatra deseja comprar? ');
    pesoAlcatra = int.parse(stdin.readLineSync());

    stdout.write('Forma de pagamento (1-Cartão Tabajara / 2-Outros): ');
    cartaoTabajara = int.parse(stdin.readLineSync());

    if(cartaoTabajara==1){
      if(pesoAlcatra>5){
        vlrAlcatra = pesoAlcatra*6.80;
        vlrAlcatraDesc = vlrAlcatra*0.05;
        VlrTotalAlcatra = vlrAlcatra-vlrAlcatraDesc;
        print(" *** CUPOM FISCAL *** ");
        print("Tipo da carne: Alcatra");
        print("Quantidade em kg -> " + pesoAlcatra.toString()); 
        print("Valor total -> " + vlrAlcatra.toString());
        print("Forma Pagamento -> Cartão Tabajara");
        print("desconto -> " + vlrAlcatraDesc.toString());
        print("Valor a pagar -> " + VlrTotalAlcatra.toString());
      }else{
        vlrAlcatra = pesoAlcatra*5.90;
        vlrAlcatraDesc = vlrAlcatra*0.05;
        VlrTotalAlcatra = vlrAlcatra-vlrAlcatraDesc;
        print(" *** CUPOM FISCAL *** ");
        print("Tipo da carne: Alcatra");
        print("Quantidade em kg -> " + pesoAlcatra.toString()); 
        print("Valor total -> " + vlrAlcatra.toString());
        print("Forma Pagamento -> Cartão Tabajara");
        print("desconto -> " + vlrAlcatraDesc.toString());
        print("Valor a pagar -> " + VlrTotalAlcatra.toString());
      }
    }else{
        if(pesoAlcatra>5){
          vlrAlcatra = pesoAlcatra*6.80;
          print(" *** CUPOM FISCAL *** ");
          print("Tipo da carne: Alcatra");
          print("Quantidade em kg -> " + pesoAlcatra.toString()); 
          print("Valor total -> " + vlrAlcatra.toString());
          print("Forma Pagamento -> de Outros Forma");
          print("desconto -> 0,00 reais");
          print("Valor a pagar -> " + vlrAlcatra.toString());
        }else{
          vlrAlcatra = pesoAlcatra*5.90;
          print(" *** CUPOM FISCAL *** ");
          print("Tipo da carne: Alcatra");
          print("Quantidade em kg -> " + pesoAlcatra.toString()); 
          print("Valor total -> " + vlrAlcatra.toString());
          print("Forma Pagamento -> de Outros Forma");
          print("desconto -> 0,00 reais");
          print("Valor a pagar -> " + vlrAlcatra.toString());
        }      
    }
  }


  else if(pedido==3){
    stdout.write('Quantos kg de Picanha deseja comprar? ');
    pesoPicanha = int.parse(stdin.readLineSync());

    stdout.write('Forma de pagamento (1-Cartão Tabajara / 2-Outros): ');
    cartaoTabajara = int.parse(stdin.readLineSync());

    if(cartaoTabajara==1){
      if(pesoPicanha>5){
        vlrPicanha = pesoPicanha*7.80;
        vlrPicanhaDesc = vlrPicanha*0.05;
        VlrTotalPicanha = vlrPicanha-vlrPicanhaDesc;
        print(" *** CUPOM FISCAL *** ");
        print("Tipo da carne: Picanha");
        print("Quantidade em kg -> " + pesoPicanha.toString()); 
        print("Valor total -> " + vlrPicanha.toString());
        print("Forma Pagamento -> Cartão Tabajara");
        print("desconto -> " + vlrPicanhaDesc.toString());
        print("Valor a pagar -> " + VlrTotalPicanha.toString());
      }else{
        vlrPicanha = pesoPicanha*6.90;
        vlrPicanhaDesc = vlrPicanha*0.05;
        VlrTotalPicanha = vlrPicanha-vlrPicanhaDesc;
        print(" *** CUPOM FISCAL *** ");
        print("Tipo da carne: Picanha");
        print("Quantidade em kg -> " + pesoPicanha.toString()); 
        print("Valor total -> " + vlrPicanha.toString());
        print("Forma Pagamento -> Cartão Tabajara");
        print("desconto -> " + vlrPicanhaDesc.toString());
        print("Valor a pagar -> " + VlrTotalPicanha.toString());
      }
    }else{
        if(pesoPicanha>5){
          vlrPicanha = pesoPicanha*7.80;
          print(" *** CUPOM FISCAL *** ");
          print("Tipo da carne: Picanha");
          print("Quantidade em kg -> " + pesoPicanha.toString()); 
          print("Valor total -> " + vlrPicanha.toString());
          print("Forma Pagamento -> de Outros Forma");
          print(" desconto -> 0,00 reais");
          print("Valor a pagar -> " + vlrPicanha.toString());
        }else{
          vlrPicanha = pesoPicanha*6.90;
          print(" *** CUPOM FISCAL *** ");
          print("Tipo da carne: Picanha");
          print("Quantidade em kg -> " + pesoPicanha.toString()); 
          print("Valor total -> " + vlrPicanha.toString());
          print("Forma Pagamento -> de Outros Forma");
          print(" desconto -> 0,00 reais");
          print("Valor a pagar -> " + vlrPicanha.toString());
        }      
    }
  }else{
    print("Pedido inválido!");
  }

}