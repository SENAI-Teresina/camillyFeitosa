class Aluno{
  String nome;
  int matricula;
  String curso;

  Aluno(this.nome, this.matricula, this.curso);

  void detalhes(){
    print('aluno: $nome, matricula: $matricula, curso: $curso');
  }
}

void main(){
   Aluno aluno = Aluno('joao pedro', 452, 'Eng. de software');
   aluno.detalhes();
}