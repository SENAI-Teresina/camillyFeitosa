class ContaBancaria {
  double saldo; 
  String titular; 
 
  ContaBancaria(this.saldo, this.titular);

  void depositar(double valor) {
    saldo += valor; 
    print('Depósito de $valor realizado com sucesso. Novo saldo: $saldo');
  }

  void sacar(double valor) {
    if (saldo >= valor) {
      saldo -= valor; 
      print('Saque de $valor realizado com sucesso. Novo saldo: $saldo');
    } else {
      print('Saldo insuficiente para o saque de $valor. Saldo atual: $saldo');
    }
  }
}

void main() {
  ContaBancaria conta = ContaBancaria(10000000, 'Camilly'); 
  conta.depositar(500); 
  conta.sacar(200); 
}