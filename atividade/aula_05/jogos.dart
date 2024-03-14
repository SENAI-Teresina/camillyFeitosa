class Jogo {
  String nome;
  String genero;
  String plataforma;

  Jogo(this.nome, this.genero, this.plataforma);

  void imprimirDetalhes() {
    print('Detalhes do jogo:');
    print('Nome: $nome');
    print('Gênero: $genero');
    print('Plataforma: $plataforma');
  }
}

void main() {
  Jogo jogo = Jogo('Free Fire', 'Aventura', 'PS5 e PC'); 
  jogo.imprimirDetalhes(); 
}