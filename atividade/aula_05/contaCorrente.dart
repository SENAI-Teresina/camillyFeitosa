class Contacorrente {
  String titular;
  double saldo;

  Contacorrente(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
    print('Depósito de $valor realizado. Novo saldo: $saldo');
  }

  void sacar(double valor) {
    if (saldo >= valor) {
      saldo -= valor;
      print('Saque de $valor realizado. Novo saldo: $saldo');
    } else {
      print('Saldo insuficiente para realizar saque.');
    }
  }
}

class ContaCorrente extends Contacorrente {
  double taxaManutencao;

  ContaCorrente(String titular, double saldo, this.taxaManutencao)
      : super(titular, saldo);

  void cobrarTaxaManutencao() {
    saldo -= taxaManutencao;
    print('Taxa de manutenção de $taxaManutencao cobrada. Novo saldo: $saldo');
  }

  void exibirDetalhesConta() {
    print('Titular: $titular');
    print('Saldo: $saldo');
    print('Taxa de Manutenção: $taxaManutencao');
  }
}

void main() {
  ContaCorrente minhaConta = ContaCorrente('João', 1000, 10);
  minhaConta.depositar(500);
  minhaConta.sacar(200);
  minhaConta.cobrarTaxaManutencao();
  minhaConta.exibirDetalhesConta();
}