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

void main() {
  Animal animal = Animal('Arara', 'Araras-azuis (Anodorhynchus hyacinthinus)', 12); 
  animal.imprimirDetalhes(); 
}