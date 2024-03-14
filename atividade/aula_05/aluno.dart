class Aluno{
  String nome;
  int idade;
  String curso;

  Aluno(this.nome, this.idade, this.curso);

  void detalhes(){
    print('aluno: $nome, matricula: $idade, curso: $curso');
  }
}

void main(){
   Aluno aluno = Aluno('Camilly', 18, 'Eng. de software');
   aluno.detalhes();
}