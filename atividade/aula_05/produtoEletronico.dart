class ProdutoEletronico {
  String nome;
  double preco;
  int garantia; 

  ProdutoEletronico(this.nome, this.preco, this.garantia);

  void exibirDetalhes() {
    print('Detalhes do Produto Eletrônico:');
    print('Nome: $nome');
    print('Preço: R\$$preco');
    print('Garantia: $garantia meses');
  }
}

void main() {

  var celular = ProdutoEletronico('Smartphone', 1500.0, 12);

  celular.exibirDetalhes();
}