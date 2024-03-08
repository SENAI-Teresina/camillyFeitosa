import 'dart:async';
import 'dart:io';

class Teste{
  void emitirSom(){
    print("au au");
  }
}

class Teste2 extends Teste{
  void emitirSom() {
  print("uiii");
  }
}
void main() {
  Teste2 teste = Teste2();
  teste.emitirSom();
}
