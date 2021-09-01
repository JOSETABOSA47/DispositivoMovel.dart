import 'dart:io';

void main() {

    double preco, total;
    int i;

    preco = 1.99;

    print("LOJA - TABELA DE PREÇO:");

    for(i=1; i<=50; i++){
       total = preco * i;
       print(i.toString()+ " - "+ total.toString());
}
}