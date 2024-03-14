class Estudante {
  String nome;
  int matricula;
  String curso;
  List<double> notas;

  Estudante(this.nome, this.matricula, this.curso, this.notas);

  double calcularMedia() {
    if (notas.isEmpty) {
      return 0.0;
    }
    double soma = notas.reduce((a, b) => a + b);
    return soma / notas.length;
  }

  void exibirDetalhes() {
    print('Nome: $nome');
    print('Matrícula: $matricula');
    print('Curso: $curso');
    print('Notas: $notas');
    print('Média: ${calcularMedia()}');
  }
}

void main() {
  Estudante aluno = Estudante('João', 12345, 'Engenharia', [8.0, 7.5, 9.0]);
  aluno.exibirDetalhes();
}