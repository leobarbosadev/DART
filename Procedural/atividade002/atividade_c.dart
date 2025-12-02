// Soma dos múltiplos: Faça um programa que receba um número inteiro N e calcule a soma de todos os múltiplos de 3 ou 5 menores que N.

import 'dart:io';

void main() {
  while (true) {
    print('=== SOMA DE MÚLTIPLOS ===');
    stdout.write('Entre com um número inteiro: ');
    String? val = stdin.readLineSync();

    if (val != null && val.isNotEmpty) {
      int? valor = int.tryParse(val); //AQUI ESTÁ TENTANDO FAZER O PARSE
      int soma = 0;

      if (valor == null) {
        print('Digite somente números inteiros');
      } else {
        for (int i = 1; i < valor; i++) {
          if (i % 3 == 0) {
            soma += i;
          }

          if(i % 5 == 0){
            soma += i;
          }
        }
          print('A soma dos múltiplos de 3 e 5 menores que ${valor} = ${soma}');
      }
    }
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
