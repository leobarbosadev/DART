//Multiplicação de Elementos Ímpares 
//Percorra uma lista de números inteiros. Para cada número, verifique se ele é ímpar.
//Se for ímpar, ele deve ser multiplicado por 2. Se for par, ele deve permanecer inalterado.
//O resultado final deve ser uma nova lista com os valores transformados.

import 'dart:io';


verificarImpar({
  required List<int> inteiros2,}){
    
    List<int> novaLista = [];
    List<int> somenteImpar = [];
    List<int> somentePar = [];

    for(int numero in inteiros2){
      if(numero % 2 != 0){
        int multiplicado = numero * 2;
        novaLista.add(multiplicado);
        somenteImpar.add(numero);
      }
      else{
        somentePar.add(numero);
      }
    }
      novaLista.sort();
      somenteImpar.sort();

      print('Lista original: $inteiros2');
      print('Lista somente par: $somentePar');
      print('Lista somente ímpar: $somenteImpar');
      print('Nova lista multiplicado por 2: $novaLista');
}

void main(){
  while(true){

    // List<int> inteiros = [5, 12, 8, 2, 7, 11, 3, 6, 9, 18];
    List<int> inteiros2 = [];

    stdout.write('Quantos elementos deseja adicionar a lista? ');
    String? entradaInt = stdin.readLineSync();
    
    int? quantidade = int.tryParse(entradaInt ?? '');
    if (quantidade == null || quantidade <= 0) {
      print('Por favor, digite um número válido maior que 0.');
      continue;
    }

    for(int i = 0; i < quantidade; i++){
      stdout.write('Digite os números: ');
      String? entradaNumeros = stdin.readLineSync();

      if(entradaNumeros !=null && entradaNumeros.isNotEmpty){
        int? numeros = int.tryParse(entradaNumeros);
        if(numeros != null){
          inteiros2.add(numeros);
        }else{
          print('Digite somente números!!');
        }
      }
    }

    verificarImpar(inteiros2: inteiros2); // PARÂMETRO: LISTA

    print('');
    stdout.write('Deseja continuar? (s/n) ');
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