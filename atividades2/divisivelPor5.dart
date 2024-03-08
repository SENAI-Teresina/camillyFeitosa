import 'dart:io';

void main(){
  print("digite: ");
  int num1 = int.parse(stdin.readLineSync()!);

  if(num1 % 5 == 0){
    print("divisivel por 5");
  }
  else{
    print("não divisivel");
  }
}