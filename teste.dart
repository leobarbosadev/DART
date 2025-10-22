// // //Recebe um numero e soma 5 a ele
// import 'dart:io';


// void main(){


//   while(true){
//     stdout.write('Entre com um número: ');
//     String? val = stdin.readLineSync();

//     if(val != null && val.isNotEmpty){
//       int? valor = int.tryParse(val); //Se o tryParse tentar fazer a conversao para inteiro e não conseguir(digitar letra) vai retornar null
//       int resultado;
//       if(valor != null){ //Aqui o tryParse consegue fazer a conversão
//         resultado = valor + 5;
//         print('O valor digitado foi: ${valor}, esse valor mais 5 é igual a: ${resultado}');
//       }else{ //Aqui ele não consegue fazer a conversão
//         print('Só numero');
//       }

//     }else{
//       print('Valor em branco ou nulo');
//       continue;
//     }
//     stdout.write('Deseja finalizar? (s/n)');
//     var continuar = stdin.readLineSync();

//     if(continuar == 's' || continuar != null){
//       print('Programa finalizado!!');
//       break;
//     }
//   }
// }

// //Recebe um numero e soma 5 a ele

// import 'dart:io';

// void main(){

//   while(true){
//     stdout.write('Entre com um número: ');
//     String? entrada = stdin.readLineSync();
    
//     if(entrada != null && entrada.isNotEmpty){
//       int? valor = int.tryParse(entrada); //Aqui tenta conververter a string para int
//       int resultado;
//       if(valor != null){ // CONSEGUIU FAZER O PARSE
//         resultado = valor + 5;
//         print('O número digitado foi ${valor}, somado 5 é igual a ${resultado}');
//       }else{ // AQUI ELE NÃO CONSEGUIU FAZER O PARSE
//         print('Digite somente números!!');
//       }
//     }
    
//     stdout.write('Deseja continuar? (s/n) ');
//     String? resposta = stdin.readLineSync();

//     if(resposta == null || resposta.isEmpty){
//       print('valor invalido');
//       continue;
//     }

//     if(resposta.toLowerCase() == 's'){
//       continue;
//     }else{
//       print('Programa encerrado...');
//       break;
//     }
//   }
// }



//VERIFICAR SE É PAR OU ÍMPAR
import 'dart:io';


void main(){
  while(true){
    stdout.write('Entre com um valor: ');
    String? entrada = stdin.readLineSync();

    if(entrada != null && entrada.isNotEmpty){
      int? valor = int.tryParse(entrada); // AQUI TENTA FAZER O CASTING PARA int
      if(valor == null){ // AQUI NÃO FOI POSSÍVEL FAZER O CASTING
        print('Valor inválido!');
        continue;
      }else{ // AQUI FOI FEITO O CASTING
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