class Fruta {
  String nome;
  String cor;
  String sabor;

  Fruta(this.nome, this.cor, this.sabor);

  void exibirDetalhes() {
    print('Nome: $nome');
    print('Cor: $cor');
    print('Sabor: $sabor');
  }
}

void main() {
  Fruta minhaFruta = Fruta('Maçã', 'Vermelha', 'Doce');
  minhaFruta.exibirDetalhes();
}