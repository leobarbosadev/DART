import 'dart:io';

void main(){
  stdout.write('Entre com o primeiro valor: ');
  String? v1 = stdin.readLineSync();

  stdout.write('Entre com o segundo valor: ');
  String? v2 = stdin.readLineSync();

  if(v1 != null && v1.isNotEmpty && v2 != null && v2.isNotEmpty){
    double valor1 = double.parse(v1);
    double valor2 = double.parse(v2);

    double divisao = valor1 / valor2;

    print('-' * 50);
    print('A divisao entre ${valor1} e ${valor2} = ${divisao.toStringAsFixed(4)}');
    print('-' * 50);
  }



}