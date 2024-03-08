import 'dart:io';

void main() {
  print('Digite um número inteiro positivo: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero < 0) {
    print('O número deve ser positivo.');
    return;
  }

  int fatorial = calcularFatorial(numero);
  print('O fatorial de $numero é $fatorial.');
}

int calcularFatorial(int numero) {
  int resultado = 1;
  for (int inteiro = 2; inteiro <= numero; inteiro++) {
    resultado *= inteiro;
  }
  return resultado;
}
