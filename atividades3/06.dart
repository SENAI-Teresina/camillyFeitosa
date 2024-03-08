class Livros{
  String titulo;
  String autor;
  int anoPubli;

  Livros(this.anoPubli,this.autor, this.titulo);

  void detalhes(){
    print('o livro escolhido é $titulo, de $autor, lançado em $anoPubli.');
  }
}

void main(){
  Livros livros = Livros(2000, 'jk rowling', 'harry potter');
  livros.detalhes();
}