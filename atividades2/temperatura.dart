import 'dart:io';

void main(){
  print("escolha a converção desejada: ");
  print("1. C° para °F: ");
  print("2. °F para C°: ");
  double opcao = double.parse(stdin.readLineSync()!);
  print("digite o valor: ");
  double valor = double.parse(stdin.readLineSync()!);

  double conversao = 0;

  if(opcao == 1){
    conversao =  (valor * 9/5) + 32;
    print("$conversao");
  }
  else if(opcao == 2){
    conversao = (valor - 32) * 5/9;
      print("$conversao");
  }
}