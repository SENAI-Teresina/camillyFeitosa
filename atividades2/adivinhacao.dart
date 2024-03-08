import 'dart:io';
import 'dart:math';

void main(){
  print("jogo da adivinhaçaõ");
  Random random = Random();
  int numeroSecreto = random.nextInt(100) + 1;
  int tentativas = 0;
  int chute = 0;

  print("tente adivinhar o numero: ");

  while (chute != numeroSecreto) {
    chute = int.parse(stdin.readLineSync()!);
    tentativas++;
  
  if(chute < numeroSecreto) {
    print("tente um numero maior");
  }
  else if(chute > numeroSecreto){
    print("tente um numero menor");
  }
}
  print("parabens!!");
}