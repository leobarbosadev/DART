import 'dart:io';

void main(){

  while(true){
    stdout.write('Entre com o primeiro numero: ');
    String? valor1 = stdin.readLineSync(); //Null Safety

    stdout.write('Entre com o segundo numero: ');
    String? valor2 = stdin.readLineSync();

    if(valor1 != null && valor1.isNotEmpty && valor2 != null && valor2.isNotEmpty){
      int? val1 = int.tryParse(valor1);
      int? val2 = int.tryParse(valor2);
      int resultado;

      if(val1 != null && val2 != null){
        resultado = val1 + val2;
        print('Soma: ${resultado}');
      }else{
      print('Valores inválidos, digite apenas números');
      continue;
    }
    }else{
      print('Valores null, ou em branco');
      continue;
    }
    stdout.write('Deseja continuar?(s/n): ');
    var continuar = stdin.readLineSync();

    if(continuar != 's'){
      print('Programa encerrado!!');
      break;
    }
  }
}