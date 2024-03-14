class Veiculo{
  String fabricante;
  String modelo;
  String passageiros;

  Veiculo(this.fabricante,this.modelo, this.passageiros);

  void acelerar(){
    print('o veiculo do $modelo está acelerando.');
  }
}

class Aviao extends Veiculo{
  Aviao(super.fabricante, super.modelo, super.passageiros);

  void acelerar(){
    print('o aviao vai decolar');
  }
}

void main(){
  Aviao aviao = Aviao("gol", 'huj-900', '78');
  aviao.acelerar();

}