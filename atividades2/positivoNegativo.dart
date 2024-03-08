import 'dart:io';

void main(){
print("insira um numero");
double numero = double.parse(stdin.readLineSync()!);

if(numero <= 0){
  print("o numero é negativo");
}
else{
  print("o numero é positivo");
}
}