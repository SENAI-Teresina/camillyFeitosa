import 'dart:io';

void main() {
  print('digite um numero de ponto flutuante: ');
  String input = stdin.readLineSync()!; // pega o dado e lê para a maquina.
  double numero = double.parse(input);
  print('O numero digitado foi: $numero');
}