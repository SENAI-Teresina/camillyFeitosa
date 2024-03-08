import 'dart:io';

void main() {
  print("Digite um número inteiro: ");
  int number = int.parse(stdin.readLineSync()!);

  if(number % 2 == 0 ){
    print("o $number é par");
  }
  else{
    print("o $number é impar");
  }
}


/*  if (isEven(number)) {
    print('$number é par.');
  } else {
    print('$number é ímpar.');
  }
}

bool isEven(int number) {
  return number % 2 == 0;
}*/


/* if: É uma palavra-chave que inicia uma estrutura condicional. 
Ela permite que você execute um bloco de código se uma determinada condição for verdadeira.

(isEven(number)): É a condição que está sendo verificada. Aqui, isEven(number) é uma chamada de função
que retorna true se o número fornecido como argumento for par e false caso contrário. 
Portanto, essa condição verifica se o número é par.
{: Este abre um bloco de código que será executado se a condição dentro do if for verdadeira.*/


/*bool: É o tipo de dado retornado pela função. "bool" é uma abreviação de "booleano", que pode ter apenas
dois valores: verdadeiro (true) ou falso (false).

isEven(int number): Isso define a função isEven e especifica que ela aceita um parâmetro, 
que é um número inteiro chamado number.

return: É uma palavra-chave que indica o valor que a função irá retornar.
number % 2 == 0: Esta é a expressão que determina se o número é par. O operador % calcula o resto da divisão do number por 2. Se o resto for igual a zero, isso significa que o número é divisível por 2, ou seja, é par. 
Portanto, se esta expressão for verdadeira, a função retorna true; caso contrário, retorna false.*/
