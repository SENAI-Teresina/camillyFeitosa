class Circulo {
  double raio;

  Circulo(this.raio);

  double calcularArea() {
    return 3.14159 * raio * raio;
  }
}

void main() {
  Circulo circulo = Circulo(5.0); // Criando uma instância de Circulo com raio 5.0
  double area = circulo.calcularArea();
  print('A área do círculo é: $area'); // Imprimindo a área calculada
}