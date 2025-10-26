//Fatorial com repetição: Faça um programa que leia um número inteiro positivo e calcule seu fatorial usando um loop
import 'dart:io';

void main(){
  while(true){
    print('=== CALCULAR FATORIAL ===');
    stdout.write('Entre com um valor positivo: ');
    String? val = stdin.readLineSync();

    if(val != null && val.isNotEmpty){
      int? valor = int.tryParse(val);
      int fatorial = 1;

      if(valor == null || valor < 0){
        print('Digite somente núnmeros inteiros!!');
      }else if (valor == 0){
        print('${valor}! = 1');
      }else{
        for(int i = 1; i <= valor; i++){
          fatorial *= i;
        }
        print('${valor}! = ${fatorial}');
      }
    }
    print('');
    stdout.write('Desja continuar? (s/n) ');
    String? escolha = stdin.readLineSync();

    if(escolha == null || escolha.trim().isEmpty){
      print('Valor inválido!!!');
      print('');
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