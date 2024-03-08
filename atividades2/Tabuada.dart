import 'dart:io';

void main() {
  print("Digite um número: ");
  int numero = int.parse(stdin.readLineSync()!);

  print("Tabuada de $numero:");

  for (int i = 1; i <= 10; i++) {
    int resultado = numero * i;
    print("$numero x $i = $resultado");
  }
}
