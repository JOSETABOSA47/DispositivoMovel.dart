import 'dart:io';

void main()
{
double lata_valor = 80.00, preco_total, latas_total;
int t1 = 3, lata = 18, metroq, area;
area = (t1 * lata); 
stdout.write('Digite os metros quadrados da area: ');
metroq = int.parse(stdin.readLineSync());

latas_total = (metroq / area);
preco_total = lata_valor * latas_total;

 print('A quantidades de latas de tinta a serem compradas e $latas_total o preço total : $preco_total');
}