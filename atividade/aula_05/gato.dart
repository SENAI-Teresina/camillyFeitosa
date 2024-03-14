//EXERCÍCIO 10. Crie uma classe Animal com atributos nome, espécie e idade. Adicione métodos para exibir detalhes do animal//
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

//EXERCÍCIO 11. Defina uma classe Cachorro que herda da classe Animal. Adicione métodos específicos para latir e brincar.//
class Cachorro extends Animal {
  Cachorro(String nome, String especie, int idade) : super(nome, especie, idade);

  void latir() {
    print('$nome: au au au');
  }

  void brincar() {
    print('$nome Girando, Pulando e Brincando');
  }
}

class Gato extends Animal {
  Gato(String nome, String especie, int idade) : super(nome, especie, idade);

  void miar() {
    print('$nome: miau miau');
  }

  void dormir() {
    print('$nome: dormindo');
  }
}

void main() {
  Cachorro cachorro = Cachorro('Derick', 'Vira-Lata', 3);
  cachorro.imprimirDetalhes();
  cachorro.latir();
  cachorro.brincar();
  Gato gato = Gato ('Scar', 'Siames', 2);
  gato.imprimirDetalhes;
  gato.miar();
  gato.dormir();
}