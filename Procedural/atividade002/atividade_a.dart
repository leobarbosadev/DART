//Números primos no intervalo: Faça um programa que receba dois números inteiros A e B e imprima todos os números primos entre A e B (inclusive).

import 'dart:io';

void main(){
  while(true){
    print('=== NÚMEROS PRIMOS ===');
    stdout.write('Entre com o valor inicial: ');
    String? val_1 = stdin.readLineSync();

    stdout.write('Entre com o valor final: ');
    String? val_2 = stdin.readLineSync();

    if(val_1 != null && val_1.isNotEmpty && val_2 != null && val_2.isNotEmpty){
      int? valor_1 = int.tryParse(val_1);
      int? valor_2 = int.tryParse(val_2);
      if(valor_1 == null || valor_2 == null){
        print('Digite somente números');
        continue;
      }else{
        for(int i = valor_1; i <= valor_2; i++){
          int contador = 0;

          for (int j = 1; j <= i; j++){
            if(i % j == 0){
              contador++;
            }
          }
          if(contador == 2){
            stdout.write('${i}, ');
          }
        }
      }
    } else{
      print('Valores inválidos, digite somente números');
    }
    
    print('');
    stdout.write('Desja continuar? (s/n) ');
    String? escolha = stdin.readLineSync();

    if(escolha == null || escolha.isEmpty){
      print('Valor inválido!!!');
      continue;
    }
    if(escolha.toLowerCase() == 's'){
      continue;
    }else{
      print('Programa encerrado!!!');
      break;
    }
  }
}