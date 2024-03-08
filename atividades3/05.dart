class Animal {
  void emitirSom() {
    print('Som do animal');
  }
}

class Cachorro extends Animal{
  void emitirSom(){
  print('auau');
  }
}

class Gato extends Animal{
  void emitirSom(){
  print('miau');
  }
}

void main() {
  Animal animal = Animal();
  animal.emitirSom(); // Chamando o método emitirSom da instância de Animal
  Cachorro cao = Cachorro();
  cao.emitirSom();
  Gato gato = Gato();
  gato.emitirSom();
}
