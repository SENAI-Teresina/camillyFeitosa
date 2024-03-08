import 'dart:io';
import 'dart:math';

void main(){
  print("insira o valor inicial: ");
  double vInicial = double.parse(stdin.readLineSync()!);

print("qual a taxa de juros anual?");
  double taxaJuros = double.parse(stdin.readLineSync()!);

  print("em quantos anos?");
  int anos = int.parse(stdin.readLineSync()!);

  taxaJuros /= 100.0;

  double valorFuturo = calcularValorFuturo(vInicial, taxaJuros, anos);

  print("$valorFuturo");
}
  double calcularValorFuturo(double vInicial, double taxaJuros, int anos) {
    double valorFuturo = vInicial * pow((1 + taxaJuros), anos.toDouble());
    return valorFuturo;
  }