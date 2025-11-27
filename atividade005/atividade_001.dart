//Filtragem e Soma Condicional de Pares
//Dada uma lista de números inteiros, o objetivo é primeiro filtrar apenas os números que são pares e, simultaneamente, maiores que 10.
//Após a filtragem, deve-se calcular a soma total desses números restantes.

import 'dart:io';

  List<int> inteiros = [2, 5, 8, 12, 15, 16, 22];

void acharPar({required List<int> qualquerNome}){
  print('Todos os números: $qualquerNome');
  print('');
  int somaRestante = 0;
  print('Os números pares e maiores que 10 são: ');
  for(int numero in qualquerNome){
      if(numero % 2 == 0 && numero > 10){
        print('${numero}');
      }
      else{
        somaRestante += numero;
      }
    }
    print('A soma dos números restantes é: ${somaRestante}');
}

void main(){
  while(true){
    // stdout.write('Quantos elementos quer inserir na lista?');
    // String? qtdElementos = stdin.readLineSync();

    acharPar(qualquerNome: inteiros);

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


