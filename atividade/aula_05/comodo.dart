class Comodo {
  String nome;
  double area;

  Comodo(this.nome, this.area);

  double calcularAreaDasParedes(double altura) {
    return 2 * (area / altura);
  }

  void exibirDetalhes() {
    print('Nome do Comodo: $nome');
    print('Área: $area metros quadrados');
  }
}

void main() {
  Comodo sala = Comodo('Sala', 25);
  sala.exibirDetalhes();
  double altura = 3.0; // Altura das paredes em metros
  double areaDasParedes = sala.calcularAreaDasParedes(altura);
  print('Area das paredes: $areaDasParedes metros quadrados');
}