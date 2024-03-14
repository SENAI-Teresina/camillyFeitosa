
class Animal {
  String nome;
  String especie;
  int idade;

  Animal(this.nome, this.especie, this.idade);

  void imprimirDetalhes() {
    print('Detalhes do Animal:');
    print('Nome: $nome');
    print('Espécie: $especie');
    print('Idade: $idade');
  }
}


class Cachorro extends Animal {
  Cachorro(String nome, String especie, int idade) : super(nome, especie, idade);

  void latir() {
    print('$nome: au au au');
  }

  void brincar() {
    print('$nome Girando, Pulando e Brincando');
  }
}

void main() {
  Cachorro cachorro = Cachorro('Derick', 'Vira-Lata', 3);
  cachorro.imprimirDetalhes();
  cachorro.latir();
  cachorro.brincar();
}