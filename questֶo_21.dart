import 'dart:io';

void main() {
	
  String opcao;
  int qtde100, qtde101, qtde102, qtde103, qtde104, qtde105, qtdeTotal101, qtdeTotal102, qtdeTotal103, qtdeTotal104, qtdeTotal10, codigo, qtdeTotal100;
  double valor100, valor101, valor102, valor103, valor104, valor105, valorConta;
  qtde100 = 0;
  qtde101 = 0;
  qtde102 = 0;
  qtde103 = 0;
  qtde104 = 0;
  qtde105 = 0;

  while(opcao=="S"){
    
    print(" *** NOSSO CARDAPIO ***");
    print("Especificação      Código     Preço ");
    print("Cachorro quente      100       1,20 ");
    print("Bauru simples        101       1,30 ");
    print("Bauru com ovo        102       1,50 ");
    print("Hambúrguer           103       1,20 ");
    print("Cheesburguer         104       1,30 ");
    print("Refrigerante         105       1,00 ");
    
    stdout.write('Informe o  produto que deseja pedir: ');
    codigo = int.parse(stdin.readLineSync());
    	
    switch(codigo) {

      case 100:
        stdout.write('Desejas quantos Cachorro quente? ');
        qtde100 = int.parse(stdin.readLineSync());
        qtdeTotal100 = qtdeTotal100+qtde100;
		    print("Cachorro quente adicionado!");
        break;

      case 101:
        stdout.write('Desejas quantos Bauru simples? ');
        qtde101 = int.parse(stdin.readLineSync());
        qtdeTotal101 = qtdeTotal101+qtde101;
		    print("Bauru simples adicionado!");
        break;

      case 102:
        stdout.write('Desejas quantos Bauru com ovo? ');
        qtde102 = int.parse(stdin.readLineSync());
        qtdeTotal102 = qtdeTotal102+qtde102;
		    print("Bauru com ovo adicionado!");
        break;

      case 103:
        stdout.write('Desejas quantos Hamburguers? ');
        qtde103 = int.parse(stdin.readLineSync());
        qtdeTotal103 = qtdeTotal103+qtde103;
		    print("Hamburguers adicionados!");
        break;

      case 104:
        stdout.write('Desejas quantos Cheesburguers? ');
        qtde104 = int.parse(stdin.readLineSync());
        qtdeTotal104 = qtdeTotal104+qtde104;
		    print("Cheesburguers adicionados!");
        break;

      case 105:
        stdout.write('Desejas quantos Refrigerantes? ');
        qtde105 = int.parse(stdin.readLineSync());
        qtdeTotal105 = qtdeTotal105+qtde105;
		    print("Refrigerante adicionado!");
        break;

        
      default:
        print("Código inválida!");
        break;
    }
    stdout.write('Deseja pedir algo mais? (S/N): ');
    opcao = stdin.readLineSync();
  }

  valor100 = qtdeTotal100*1.20;
  valor101 = qtdeTotal101*1.30;
  valor102 = qtdeTotal102*1.50;
  valor103 = qtdeTotal103*1.20;
  valor104 = qtdeTotal104*1.30;
  valor105 = qtdeTotal105*1.00;
  valorConta = valor100+valor101+valor102+valor103+valor104+valor105; 

  print(" *** PEDIDO *** ");
  if(qtdeTotal100>0){
    print(qtdeTotal100.toString() + " Cachorro quente | Valor -> " + valor100.toString() + " reais");
  }
  
    if(qtdeTotal101>0){
    print(qtdeTotal101.toString() + " Bauru simples | Valor -> " + valor101.toString() + " reais");
  }

    if(qtdeTotal102>0){
    print(qtdeTotal102.toString() + " Bauru com ovo | Valor -> " + valor102.toString() + " reais");
  }

    if(qtdeTotal103>0){
    print(qtdeTotal103.toString() + " Hambúrguer | Valor -> " + valor103.toString() + " reais");
  }

    if(qtdeTotal104>0){
    print(qtdeTotal104.toString() + " Cheesburguer | Valor -> " + valor104.toString() + " reais");
  }

    if(qtdeTotal105>0){
    print(qtdeTotal105.toString() + " Refrigerante | Valor -> " + valor105.toString() + " reais");
  }

  print("Valor total do pedido -> " + valorConta.toString() + " reais");

}