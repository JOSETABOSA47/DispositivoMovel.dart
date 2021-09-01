void main() {
	int fib1 = 1, fib2 = 1, soma, i;

  print("Fibonacci 1 é "  + fib1.toString());
  print("Fibonacci 2 é " + fib2.toString());

  for(i=3; i<=30; i++){
     soma = fib1 + fib2;
     fib1 = fib2;
     fib2 = soma;

     print("Fibonacci " + i.toString() + " é " + soma.toString()); 
  } 
}