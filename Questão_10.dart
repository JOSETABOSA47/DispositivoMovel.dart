import 'dart:io';

void main() {

    int numero;

    stdout.write("Digite um numero: ");
    numero = int.parse(stdin.readLineSync());


    if(numero < 0){
       print("Esse numero é negativo");
    }
    else{
       print("Esse numero é positivo");
    }

}