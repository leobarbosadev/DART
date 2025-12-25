//Verificação de ano bissexto: Faça um programa que receba um ano e verifique se ele é bissexto, exibindo a resposta
import 'dart:io';

void main(){
  while(true){
    print('=== VERIFICAR ANO BISSEXTO ===');
    stdout.write('Entre com um ano: ');
    String? entrada = stdin.readLineSync();

    if(entrada != null && entrada.isNotEmpty){
      int? ano = int.tryParse(entrada);

      if(ano == null){
        print('Digite um ano válido');
      }else{
        if((ano % 4 == 0 && ano % 100 !=0 ) || (ano % 400== 0)){
          print('O ano ${ano} é bissexto');
        }else{
          print('O ano ${ano} não é bissexto');
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