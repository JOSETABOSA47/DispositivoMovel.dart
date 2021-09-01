import 'dart:io';

void main() {

    int numero, i, tabuada;

    stdout.write("Digite um numero da tabuada: ");
    numero = int.parse(stdin.readLineSync());

    print("TABUADA DE "+ numero.toString()+ ":");

    for(i=1; i<=10; i++){
       if(numero<=10){
       tabuada = numero * i;
       print(numero.toString()+ " X "+ i.toString() +" = "+ tabuada.toString());
      }
   }
   if(numero > 10){
       print("Esse numero esta fora do padrão");
   }
}