//Multiplicação de Elementos Ímpares 
//Percorra uma lista de números inteiros. Para cada número, verifique se ele é ímpar.
//Se for ímpar, ele deve ser multiplicado por 2. Se for par, ele deve permanecer inalterado.
//O resultado final deve ser uma nova lista com os valores transformados.

import 'dart:io';


void main(){
  while(true){

    List<int> inteiros = [5, 12, 8, 2, 7, 11, 3, 6, 9, 18];
    List<int> novaLista = [];
    List<int> somenteImpar = [];

    for(int numero in inteiros){
      if(numero % 2 != 0){
        int multiplicado = numero * 2;
        novaLista.add(multiplicado);
        somenteImpar.add(numero);
      }
    }
      novaLista.sort();
      somenteImpar.sort();
      print('Lista original: $inteiros');
      print('Lista somente ímpar: $somenteImpar');
      print('Nova lista multiplicado por 2: $novaLista');

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
