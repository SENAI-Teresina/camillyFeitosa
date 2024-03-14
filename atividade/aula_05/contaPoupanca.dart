class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      print('Saldo insuficiente.');
    }
  }

  void exibirDetalhes() {
    print('Titular: $titular');
    print('Saldo: $saldo');
  }
}
class ContaPoupanca extends ContaBancaria {
  double taxaJuros;

  ContaPoupanca(String titular, double saldo, this.taxaJuros)
      : super(titular, saldo);


  double calcularJuros() {
    return saldo * (taxaJuros / 100);
  }

  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Taxa de Juros: $taxaJuros%');
    print('Juros: ${calcularJuros()}');
  }
}

void main() {

  var contaPoupanca = ContaPoupanca('João', 1000.0, 5.0);

  contaPoupanca.exibirDetalhes();

  contaPoupanca.depositar(500.0);

  contaPoupanca.exibirDetalhes();
}