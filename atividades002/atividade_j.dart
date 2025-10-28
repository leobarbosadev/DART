//Contagem regressiva: Faça um programa que receba um número inteiro positivo e faça
//uma contagem regressiva até zero, imprimindo cada número.
import 'dart:io';


void main(){
   while(true){
    print('=== CONTAGEM REGRESSIVA ===');
    stdout.write('Entre com um número inteiro: ');
    String? entrada = stdin.readLineSync();

    if(entrada != null && entrada.isNotEmpty){
      int? numero = int.tryParse(entrada);

      if(numero == null){
        print('Digite somente números');
      }else{
        for(int i = numero; i >= 0; i--){
          print('Contagem regressiva: ${i}');
          sleep(Duration(seconds:1));
        }
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