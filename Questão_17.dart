import 'dart:io';

void main() {

    int num1, num2, num3, num4, num5, i, soma, mult, numeros;

    stdout.write("Digite o primeiro  numero: ");
    num1 = int.parse(stdin.readLineSync());

    stdout.write("Digite o segundo numero: ");
    num2 = int.parse(stdin.readLineSync());

    stdout.write("Digite o terceiro numero: ");
    num3 = int.parse(stdin.readLineSync());

    stdout.write("Digite o quarto numero: ");
    num4 = int.parse(stdin.readLineSync());

    stdout.write("Digite o quinto numero: ");
    num5 = int.parse(stdin.readLineSync());

    soma = num1+num2+num3+num4+num5;
    mult = num1*num2*num3*num4*num5;
    print("A soma dos numeros é: " + soma.toString());
    print("A multiplicação dos numeros é: " + mult.toString());
    print("Os numeros são: " +num1.toString()+ " " +num2.toString()+" "+num3.toString()+" "+num4.toString()+" "+num5.toString());

}