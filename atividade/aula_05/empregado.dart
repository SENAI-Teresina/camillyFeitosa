class Empregado {
  String nome;
  String cargo;
  double salario;

  Empregado(this.nome, this.cargo, this.salario);

  double calcularBonus(double percentual) {
    return salario * (percentual / 100);
  }

  void exibirDetalhes() {
    print('Nome: $nome');
    print('Cargo: $cargo');
    print('Salário: $salario');
  }
}

void main() {
  Empregado empregado = Empregado('João', 'Desenvolvedor', 5000.0);
  empregado.exibirDetalhes();

  double bonus = empregado.calcularBonus(10);
  print('Bônus: $bonus');
}