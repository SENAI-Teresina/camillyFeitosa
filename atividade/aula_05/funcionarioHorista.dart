class Funcionario {
  String nome;
  String cargo;
  double salario;

  Funcionario(this.nome, this.cargo, this.salario);

  void exibirDetalhes() {
    print('Nome: $nome');
    print('Cargo: $cargo');
    print('Salário: $salario');
  }
}
class FuncionarioHorista extends Funcionario {
  double horasTrabalhadas;
  double salarioPorHora;

  FuncionarioHorista(String nome, String cargo, this.horasTrabalhadas, this.salarioPorHora)
      : super(nome, cargo, 0);

  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Horas trabalhadas: $horasTrabalhadas');
    print('Salário por hora: $salarioPorHora');
  }
  void calcularSalario() {
    salario = horasTrabalhadas * salarioPorHora;
    print('O salário de $nome é de $salario');
  }

}