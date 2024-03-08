import 'dart:io';

void main() {
  print('Digite um número inteiro: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (verificarPrimo(numero)) {
    print('$numero é um número primo.');
  } else {
    print('$numero não é um número primo.');
  }
}

bool verificarPrimo(int numero) {
  if (numero <= 1) return false; // 0 e 1 não são primos

  for (int inteiro = 2; inteiro <= numero / 2; inteiro++) {
    if (numero % inteiro == 0) {
      return false; // Se for divisível por algum número, não é primo
    }
  }

  return true; // Se não for divisível por nenhum número, é primo
}
