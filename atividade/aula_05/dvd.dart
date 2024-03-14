class DVD {
  String titulo;
  String diretor;
  int duracao; // Em minutos

  DVD(this.titulo, this.diretor, this.duracao);

  void exibirDetalhes() {
    print('Título: $titulo');
    print('Diretor: $diretor');
    print('Duração: $duracao minutos');
  }
}

void main() {
  DVD meuDVD = DVD('O Senhor dos Anéis: A Sociedade do Anel', 'Peter Jackson', 178);
  meuDVD.exibirDetalhes();
}