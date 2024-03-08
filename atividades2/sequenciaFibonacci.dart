import 'dart:io';

void main() {
  print('Digite o número de termos da sequência Fibonacci: ');
  int numero = int.parse(stdin.readLineSync()!);

  print('Os primeiros $numero termos da sequência Fibonacci são:');
  for (int inteiro = 0; inteiro < numero; inteiro++) {
    print(fibonacci(inteiro));
  }
}

int fibonacci(int numFibonacci) {
  if (numFibonacci <= 1) {
    return numFibonacci;
  } else {
    return fibonacci(numFibonacci - 1) + fibonacci(numFibonacci - 2);
  }
}
