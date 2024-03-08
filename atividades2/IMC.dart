import 'dart:io';

void main(){
  print("digite seu peso: ");
  double peso = double.parse(stdin.readLineSync()!);

  print("digite sua altura: ");
  double altura = double.parse(stdin.readLineSync()!);
  
  double imc = peso / (altura*altura);

  if(imc < 18.5){
    print("baixo peso");
  }
  else if(imc < 24.99) {
    print("peso noraml");
  }
  else if(imc < 29.99) {
    print("sobrepeso");
  }
  else if(imc > 30) {
    print("obesidade");
  }
}