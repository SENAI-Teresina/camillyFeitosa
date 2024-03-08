import 'dart:io';

void main(){
print("insira um numero: ");
int num1 = int.parse(stdin.readLineSync()!);
print("insira um 2° numero: ");
int num2 = int.parse(stdin.readLineSync()!);
print("insira um 3° numero: ");
int num3 = int.parse(stdin.readLineSync()!);

double media = (num1 + num2 + num3) / 3;;
print("a media é $media");
}