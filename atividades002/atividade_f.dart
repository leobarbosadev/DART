//Conversão de energia: Faça um programa que leia um valor em joules e converta para calorias
//(1 caloria = 4,184 joules), exibindo os resultados

import 'dart:io';

void main(){
   while(true){
    stdout.write('Entre com o valor em Joules: ');
    String? entrada = stdin.readLineSync();

    if(entrada != null && entrada.isNotEmpty){
      double? joules = double.tryParse(entrada);
      double resultado;
      if(joules == null){
        print('Digite um valor válido!!');
      }else{
        resultado = joules / 4.184;
        print('${joules}J = ${resultado.toStringAsFixed(2)}cal');
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