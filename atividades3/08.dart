import 'dart:ffi';

class Produtos{
  String nome;
  double preco;
  double quantidade;

Produtos(this.nome, this.preco, this.quantidade);

void total(){
  double total = preco * quantidade;
  print('o valor total da sua compra é $total.');
  }
}

void main(){
  Produtos produtos = Produtos('colher', 5.5, 8);
  produtos.total();
}