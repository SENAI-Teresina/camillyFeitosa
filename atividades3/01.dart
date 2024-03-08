class Pessoa{
  String nome;
  int idade;

  Pessoa(this.nome,this.idade);

  void chamar(){
    print("$nome, compareça ao guiche 9.");
  }
}

void main(){
  Pessoa pessoa1 = Pessoa('leopoldo',15);
  Pessoa pessoa2 = Pessoa('joao pedro', 28);


  pessoa1.chamar();
}