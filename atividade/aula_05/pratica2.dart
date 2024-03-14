
import 'dart:io';

class Produto {
  int id;
  String nome;
  String descricao;
  double preco;
  int quantidadeEstoque;

  Produto(this.id, this.nome, this.descricao, this.preco, this.quantidadeEstoque);

  void exibirDados() {
    print('ID: $id');
    print('Nome: $nome');
    print('Descrição: $descricao');
    print('Preço: R\$ $preco');
    print('Quantidade em estoque: $quantidadeEstoque');
  }
}

void main() {
  List<Produto> listaProdutos = [];

  int id = 1;

  while (true) {
    print('\nOpções:');
    print('1 - Adicionar produto');
    print('2 - Consultar produto');
    print('3 - Sair');
    print('Escolha uma opção:');
    var opcao = stdin.readLineSync();

    if (opcao == '1') {
      print('Digite o nome do produto:');
      var nome = stdin.readLineSync();

      print('Digite a descrição do produto:');
      var descricao = stdin.readLineSync();

      print('Digite o preço do produto:');
      var preco = double.parse(stdin.readLineSync()!);

      print('Digite a quantidade em estoque do produto:');
      var quantidadeEstoque = int.parse(stdin.readLineSync()!);

      var produto = Produto(id, nome!, descricao!, preco, quantidadeEstoque);
      listaProdutos.add(produto);
      id++;
      print('Produto adicionado com sucesso!');
    } else if (opcao == '2') {
      print('Digite o ID do produto:');
      var idProduto = int.parse(stdin.readLineSync()!);

      var produto = listaProdutos.firstWhere((element) => element.id == idProduto, orElse: () => Produto(0, '', '', 0.0, 0));
      if (produto.id != 0) {
        produto.exibirDados();
      } else {
        print('Produto não encontrado.');
      }
    } else if (opcao == '3') {
      break;
    } else {
      print('Opção inválida.');
    }
  }
}