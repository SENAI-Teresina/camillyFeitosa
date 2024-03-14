class Funcionario {
  String nome;
  String cargo;
  double salario;

  Funcionario(this.nome, this.cargo, this.salario);

  void calcularAumentoSalario(double percentualAumento) {
    double aumento = salario * percentualAumento / 100;
    salario += aumento;
    print('O salário de $nome foi aumentado em $aumento e agora é de $salario');
  }

  void exibirDetalhes() {
    print('Nome: $nome');
    print('Cargo: $cargo');
    print('Salário: $salario');
  }
}

void main() {
  
  var funcionario1 = Funcionario('João', 'Gerente', 5000.0);

  funcionario1.exibirDetalhes();

  funcionario1.calcularAumentoSalario(10);

  funcionario1.exibirDetalhes();
}