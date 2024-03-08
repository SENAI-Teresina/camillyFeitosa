class Triangulo {
  double lado1;
  double lado2;
  double lado3;

  Triangulo(this.lado1, this.lado2, this.lado3);

  String tipoTriangulo() {
    if (lado1 == lado2 && lado2 == lado3) {
      return 'Equilátero'; // Todos os lados são iguais
    } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
      return 'Isósceles'; // Dois lados são iguais
    } else {
      return 'Escaleno'; // Todos os lados são diferentes
    }
  }
}

void main() {
  Triangulo triangulo = Triangulo(5.0, 5.0, 5.0); // Criando uma instância de Triangulo
  print('O triângulo é ${triangulo.tipoTriangulo()}'); // Verificando o tipo do triângulo e imprimindo
}
