import 'dart:io';

void main(){
  stdout.write('Digite um número: ');
  String? num = stdin.readLineSync();

  num = (num == null || num.isEmpty) ? 'Nenhum numero' : num;
  double numero = double.parse(num);
  

  double dobro = numero! * 2;
  double triplo = numero! * 3;

  print('O numero digitado foi ${numero}, o dobro e ${dobro} e o triplo ${triplo}');
}