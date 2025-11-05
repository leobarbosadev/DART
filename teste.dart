//VERIFICAR SE É PAR OU ÍMPAR
import 'dart:io';


void main(){
  while(true){
    stdout.write('Entre com um valor: ');
    String? entrada = stdin.readLineSync();


    if(entrada != null && entrada.isNotEmpty){
      int? valor = int.tryParse(entrada); // AQUI TENTA FAZER O PARSE PARA int
      if(valor == null){ // AQUI NÃO FOI POSSÍVEL FAZER O PARSE
        print('Digite somente números!');
        continue;
      }else{ // AQUI FOI FEITO O PARSE
        if(valor % 2 == 0){
          print('O número ${valor} é par!!!');
        }else{
          print('O número ${valor} é ímpar!!!');
        }
      }
    }
    stdout.write('Deseja continuar? (s/n) ');
    String? resposta = stdin.readLineSync();

    if(resposta == null || resposta.isEmpty){
      print('valor inválido');
      continue;
    }
    if(resposta.toLowerCase() == 's'){
      continue;
    }else{
      print('Programa encerrado!!!');
      break;
    }
  }
}


// TESTE PARA CONTAR NUMEROS DUPLIADOS
// for(numero in numeros){
//     contador = 0;
//     numero == numero
//     contador +=1
//   }