import 'dart:io';

void main(){
  print("olá, digite o valor que deseja converter: ");
  String valorString = stdin.readLineSync()!;
  double real = double.parse(valorString);

  print("escolha a moeda que deseja converter (euro ou dolar): ");
  String moeda = stdin.readLineSync()!;

  double resultado = 0;
  //moedas
  double euro = 5.38;
  double dolar = 4.96;

  if (moeda == 'euro') {
    resultado = real * euro;
  } else if (moeda == 'dolar') {
    resultado = real * dolar;
  } 
  print("o resultado é $resultado");
    }