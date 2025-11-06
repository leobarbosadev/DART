//Filtragem e Soma Condicional de Pares
//Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os números que são pares e, simultaneamente, maiores que 10.
//Após a filtragem, deve-se calcular a soma total desses números restantes.

import 'dart:io';


void main(){
  while(true){
    stdout.write('Quantos elementos quer inserir na lista?');
    String? qtdElementos = stdin.readLineSync();
    
    List<int> inteiros = [2, 5, 8, 12, 15, 16, 22];
    int somaRestante = 0;


    print('Todos os números: $inteiros');
    print('Os números pares e maiores que 10 são: ');
    for(int numero in inteiros){
      if(numero % 2 == 0 && numero > 10){
        print('${numero}');
      }else{
        somaRestante += numero;
      }
    }
    print('');
    print('A soma dos números restantes é: ${somaRestante}');

    
    print('');
    stdout.write('Desja continuar? (s/n) ');
    String? escolha = stdin.readLineSync();

    if (escolha == null || escolha.trim().isEmpty) {
      print('Valor inválido!!!');
      print('');
      continue;
    }
    if (escolha.toLowerCase() == 's') {
      continue;
    } else {
      print('Programa encerrado!!!');
      break;
    }
  }
}