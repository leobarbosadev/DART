import 'dart:io';

void main(){
  print('1 - Número par');
  print('2 - Maior número');
  print('3 - Sair');
  stdout.write('Escolha uma opção: '); //stdout.write - PRINT ONDE O CURSOR FICA NA FRENTE DO TEXTO.
  var escolha = int.parse(stdin.readLineSync()!); //stdin.readLineSync() - CAPTURA O QUE FOI DIGITADO.

  switch(escolha){
    case 1:
      stdout.write('Escolha um número: ');
      var numero = int.parse(stdin.readLineSync()!);
      if(numero % 2 == 0){
        print('O número $numero é par!');
      } else{
        print('O número $numero é ímpar!');
      }
      break; // Interrompe o case
    case 2:
      stdout.write('Digite o primeiro número: '); //stdout.write - PRINT ONDE O CURSOR FICA NA FRENTE DO TEXTO.
      var num1 = int.parse(stdin.readLineSync()!); //stdin.readLineSync() - CAPTURA O QUE FOI DIGITADO.

      stdout.write('Digite o segundo número: '); //stdout.write - PRINT ONDE O CURSOR FICA NA FRENTE DO TEXTO.
      var num2 = int.parse(stdin.readLineSync()!); //stdin.readLineSync() - CAPTURA O QUE FOI DIGITADO.

      if(num1 > num2){
        print('O número $num1 é maior que o número $num2');
      }else{
        print('O número $num1 é menor que o número $num2');
      }
      break;
    case 3:
      print('Saindo do programa...');
      break;
    default:
      print('Fora do intervalo de opções!');
  }
}