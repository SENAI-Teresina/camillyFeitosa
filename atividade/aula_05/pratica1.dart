import 'dart:io';

class Funcionarios{
 String? nomeFuncionario;
 int cpf;
 int _idCadastroFuncionarios;

 Funcionarios(this.nomeFuncionario, this.cpf, this._idCadastroFuncionarios);
  
  int get idCadastroFuncionarios => _idCadastroFuncionarios;
  set idCadastroFuncionarios(int value) => _idCadastroFuncionarios = value;

 void detalhesFuncionarios(){
  print('nome: $nomeFuncionario');
  print('Cpf: $cpf');
  print('Id: $_idCadastroFuncionarios');
 }
}

class Tarefas extends Funcionarios{
  String? tarefas;

  Tarefas(this.tarefas,super.nomeFuncionario, super.cpf, super.idCadastroFuncionarios);

}

class Clientes{
  String? nomeClientes;
  int _idCadastroClientes;
  int opcao = int.parse(stdin.readLineSync()!);

  
  Clientes(this.nomeClientes, this._idCadastroClientes, this.opcao);
  
  int get idCadastroClientes => _idCadastroClientes;
  set idCadastroFuncionarios(int value) => _idCadastroClientes = value;

  void detalhesClientes(){
    print('nome: $nomeClientes');
    print('id: $idCadastroClientes');
  }
}
class Produtos {
  int idProduto;
  String setor;

  Produtos(this.idProduto, this.setor);

  void detalhesProdutos(){
    print('id: $idProduto');
    print('setor: $setor');
  }
}

void main(){

  print('bem vindo, voce é: ');
  print('1.funcionario');
  print('2.cliente');
  int opcao = int.parse(stdin.readLineSync()!);
  
if(opcao == 1){
  print('digite seu nome: ');
  String? nomeFuncionario = stdin.readLineSync();
  print('digite seu cpf: ');
  int cpf = int.parse(stdin.readLineSync()!);
  print('seu Id é: ');
  int _idCadastroFuncionarios = int.parse(stdin.readLineSync()!);
  print('---------------------------------------------------------------------------------------');
  print('Rede SESI');
  print('---------------------------------------------------------------------------------------');
  print('bem vindo $nomeFuncionario, o que voce quer fazer hoje?');



  Funcionarios funcionarios = Funcionarios(nomeFuncionario, cpf, _idCadastroFuncionarios);
  funcionarios.detalhesFuncionarios();
}
else if(opcao ==2){

  print('digite seu nome: ');
  String? nomeClientes = stdin.readLineSync();
  print('seu Id é: ');
  int _idCadastroClientes = int.parse(stdin.readLineSync()!);
  print('----------------------------------------------------------------------------------------');
  print('seja bem vindo ao sistema SESI, $nomeClientes.');
  print('o que voce deseja?');


  Clientes clientes = Clientes(nomeClientes, _idCadastroClientes, opcao);
  clientes.detalhesClientes();
}

  Produtos produtos1 = Produtos(1, 'amazonas');
  Produtos produtos2 = Produtos(2, 'piaui');
  Produtos produtos3 = Produtos(3, 'cuiaba');
  Produtos produtos4 = Produtos(4, 'bahia');
  produtos1.detalhesProdutos();
  produtos2.detalhesProdutos();
  produtos3.detalhesProdutos();
  produtos4.detalhesProdutos();
  }