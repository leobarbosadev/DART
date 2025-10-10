import 'dart:io';

void main(){

  stdout.write('Digite um número: ');
  String? num = stdin.readLineSync();

  num = (num == null || num.isEmpty) ? 'Nenhum numero' : num;
  int numero = int.parse(num);

  int antecessor = numero - 1;
  int sucessor = numero  +1;

  print('-' * 50);
  print('O antecessor de ${numero} é ${antecessor}');
  print('O sucessor de ${numero} é ${sucessor}');
  print('-' * 50);
}