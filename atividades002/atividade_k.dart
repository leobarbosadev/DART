//Determinação do maior divisor comum (MDC): Faça um programa que receba dois
//números inteiros e calcule o MDC usando o algoritmo de Euclides com repetição.
import 'dart:io';


void main(){
  while(true){
    print('=== MDC ===');
    stdout.write('Entre com primeiro número inteiro: ');
    String? entrada_1 = stdin.readLineSync();

    stdout.write('Entre com o segundo número inteiro: ');
    String? entrada_2 = stdin.readLineSync();

    if(entrada_1 != null && entrada_1.isNotEmpty && entrada_2 != null && entrada_2.isNotEmpty){
      int? primeiroValor = int.tryParse(entrada_1);
      int? segundoValor = int.tryParse(entrada_2);

      if(primeiroValor != null && segundoValor != null){
        print('Digite somente números');
        while(segundoValor != 0){
          int resto = primeiroValor % segundoValor;
          primeiroValor = segundoValor;
          segundoValor = resto;
        }
      }else{
        
      print('O MDC de ${entrada_1} e ${entrada_2} é ${primeiroValor}');
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
