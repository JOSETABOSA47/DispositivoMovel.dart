import 'dart:io';

void main() {

    double not1, not2, media ;

    stdout.write("Digite a primeira nota: ");
    not1 = double.parse(stdin.readLineSync());

    stdout.write("Digite a segunda nota: ");
    not2 = double.parse(stdin.readLineSync());

    media = ((not1+not2)/2);

   if(media==10){
     print("Aprovado com Destinção");
     }
   else if(media<7){
     print("Reprovado!");
     }
   else{
     print("Aprovado");
     }
}