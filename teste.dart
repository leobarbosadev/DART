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

import 'dart:io';

void main(){

  while(true){











    stdout.write('Deseja continuar? (s/n)');
    String? resposta = stdin.readLineSync();

    if(resposta == null || resposta.isEmpty){
      print('valor invalido');
      continue;
    }

    if(resposta.toLowerCase() == 's'){
      continue;
    }else{
      break;
    }
  }
}