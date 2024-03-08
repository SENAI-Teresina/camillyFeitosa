import 'dart:io';

void main(){

  print("verifivação de numeros em um intervalo");
  print("digite o numero: ");
  int inicio = int.parse(stdin.readLineSync()!);
  print("digite o numero final do intervalo: ");
  int fim = int.parse(stdin.readLineSync()!);

  print("numeros primos no intervalo de $inicio a $fim: ");

  for (int inteiro = inicio; inteiro <= fim; inteiro++){
  if (ehPrimo(inteiro)) {
    print(inteiro);
    }
  }
}
  bool ehPrimo(int numero) {
    if (numero <= 1) {
      return false;
    }

    for (int inteiro = 2; inteiro <= numero / 2; inteiro++) {
      if (numero % inteiro == 0) {
        return false;
      }
    }
    return true;
  }