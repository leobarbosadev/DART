//Determinação do Segundo Valor de Pico
//Dada uma lista de números inteiros, encontre e imprima o segundo maior valor presente na lista.
//A lista pode conter duplicatas, mas o segundo maior valor deve ser o valor distinto que é imediatamente menor que o maior valor.
import 'dart:io';
import 'dart:math';

void main(){
  while(true){
    List<int> listaInteiros = [30, 7, 10, 10, 5, 2];
    listaInteiros.remove(listaInteiros.reduce(max));

    print('O segundo número maior é: ${listaInteiros.reduce(max)}');
  

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