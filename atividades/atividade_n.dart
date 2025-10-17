import 'dart:io';

void main(){
  stdout.write('Entre com um número positvo ou negativo: ');
  String? num = stdin.readLineSync();

  if(num != null && num.isNotEmpty){
    double numero = double.parse(num);
    double resultado;

    if(numero > 0){
      resultado = numero * 2;
      print('-' * 50);
      print('O numero digitado foi ${numero}, o dobro e ${resultado}');
    }else{
      resultado = numero * 3;
      print('-' * 50);
      print('O numero digitado foi ${numero}, o seu triplo é ${resultado}');
    }
  }else{
    print('-' * 50);
    print('Valor em branco, digite um valor para calcular');
  }
}