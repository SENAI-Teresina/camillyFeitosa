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
class ContaInvestimento extends ContaBancaria {
  double taxaRendimento;

  ContaInvestimento(String titular, double saldo, this.taxaRendimento)
      : super(titular, saldo);

  double calcularRendimento() {
    return saldo * (taxaRendimento / 100);
  }

  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Taxa de Rendimento: $taxaRendimento%');
    print('Rendimento: ${calcularRendimento()}');
  }
}

void main() {

  var contaInvestimento = ContaInvestimento('João', 1000.0, 5.0);

  contaInvestimento.exibirDetalhes();

  contaInvestimento.depositar(500.0);

  contaInvestimento.exibirDetalhes();
}