import 'dart:io';

void main() {

    double metros, centimentros;

    stdout.write("Digite a quantidade de metros: ");
    metros = double.parse(stdin.readLineSync());

    centimentros = metros * 100;

    print( metros.toString() + " Metros são " + centimentros.toString() + " centimentros" );


}