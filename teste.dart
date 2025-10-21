// import 'dart:io';

// void main(){

//   while(true){
//     stdout.write('Entre com o primeiro numero: ');
//     String? valor1 = stdin.readLineSync(); //Null Safety

//     stdout.write('Entre com o segundo numero: ');
//     String? valor2 = stdin.readLineSync();

//     if(valor1 != null && valor1.isNotEmpty && valor2 != null && valor2.isNotEmpty){
//       int? val1 = int.tryParse(valor1);
//       int? val2 = int.tryParse(valor2);
//       int resultado;

//       if(val1 != null && val2 != null){
//         resultado = val1 + val2;
//         print('Soma: ${resultado}');
//       }else{
//       print('Valores inválidos, digite apenas números');
//       continue;
//     }
//     }else{
//       print('Valores null, ou em branco');
//       continue;
//     }
//     stdout.write('Deseja continuar?(s/n): ');
//     var continuar = stdin.readLineSync();

//     if(continuar != 's'){
//       print('Programa encerrado!!');
//       break;
//     }
//   }
// }

//Recebe um numero e soma 5 a ele
import 'dart:io';


void main(){


  while(true){
    stdout.write('Entre com um número: ');
    String? val = stdin.readLineSync();

    if(val != null && val.isNotEmpty){
      int? valor = int.tryParse(val); //Se o tryParse tentar fazer a conversao para inteiro e não conseguir(digitar letra) vai retornar null
      int resultado;
      if(valor != null){ //Aqui o tryParse consegue fazer a conversão
        resultado = valor + 5;
        print('O valor digitado foi: ${valor}, esse valor mais 5 é igual a: ${resultado}');
      }else{ //Aqui ele não consegue fazer a conversão
        print('Só numero');
      }

    }else{
      print('Valor em branco ou nulo');
      continue;
    }
    stdout.write('Deseja finalizar? (s/n)');
    var continuar = stdin.readLineSync();

    if(continuar == 's'){
      print('Programa finalizado!!');
      break;
    }
  }
}