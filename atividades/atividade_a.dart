//Faça um programa que mostre a mensagem "Olá Mundo!" na tela.

import 'dart:io';

void main() {
  while(true){
    print('======= Boas vindas =======');
    stdout.write('Digite uma frase ou pressione Enter para exibir olá mundo: ');
    String? entrada = stdin.readLineSync();

    if(entrada != null && entrada.isNotEmpty){
      print('${entrada}');
    }else{
      print('Olá Mundo');
    }

    stdout.write('Deseja continua? (s/n) ');
    String? escolha = stdin.readLineSync();

    if(escolha == null || escolha.isEmpty){
      print('Valor inválido');
      continue;
    }
    if(escolha.toLowerCase() == 's'){
      continue;
    }else{
      print('Programa finalizado!!!');
      break;
    }
  }
}
