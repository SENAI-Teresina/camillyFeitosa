class Livros{
  String titulo;
  String autor;
  int paginas;

  Livros(this.paginas,this.autor, this.titulo);

  void detalhes(){
    print('o livro escolhido é $titulo, de $autor, lançado em $paginas.');
  }
}

void main(){
  Livros livros = Livros(46, 'jk rowling', 'harry potter', );
  livros.detalhes();
}