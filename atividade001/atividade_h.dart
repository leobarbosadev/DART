import 'dart:io';


void main(){
  stdout.write('Entre com sua medida em metros: ');
  String? metros = stdin.readLineSync();

  if (metros != null && metros.isNotEmpty){
    double m = double.parse(metros);

    double cm = m * 100;
    double km = m / 1000;

    print('-' * 50);
    print('Metros: ${m}');
    print('Centimetros: ${cm}');
    print('Quilometros: ${km.toStringAsFixed(4)}');
    print('-' * 50);
  } else{
    print('-' * 50);
    print('Valor em branco, digite um valor para realizar a conversao.');
  }
}