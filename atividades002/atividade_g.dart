//Sequência de potências:Faça um programa que receba um número inteiro N e imprima
//as potências de 2 de 0 até N (2⁰, 2¹, ..., 2ᴺ).
import 'dart:io';
import 'dart:math';

void main(){
   while(true){
    stdout.write('Entre com um número inteiro: ');
    String? entrada = stdin.readLineSync();

    if(entrada != null && entrada.isNotEmpty){
      int? numero = int.tryParse(entrada);
      int resultado;
      if(numero == null){
        print('Digite um número inteiro: ');
      }else{
        for(int i = 0; i <= numero; i++){
          resultado = pow(2, i).toInt();
          print('2 elevado a ${i} = ${resultado}');
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