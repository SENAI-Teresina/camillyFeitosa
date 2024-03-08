class Veiculo{
  String marca;
  String modelo;

  Veiculo(this.marca,this.modelo);

  void acelerar(){
    print('o veiculo da $marca está acelerando.');
  }
}

class Aviao extends Veiculo{
  Aviao(super.marca, super.modelo);

  void acelerar(){
    print('o aviao vai decolar');
  }
}

void main(){
  Aviao aviao = Aviao("gol", 'huj-900');
  aviao.acelerar();
  Veiculo veiculo = Veiculo('fiat', 'fiat uno');
  veiculo.acelerar();

}