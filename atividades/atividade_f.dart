import 'dart:io';

void main(){

  stdout.write('Digite um número: ');
  String? num = stdin.readLineSync();

  //Null Safety
  num = (num == null || num.isEmpty) ? 'Nenhum numero' : num;
  int numero = int.parse(num);

  int antecessor = numero - 1;
  int sucessor = numero  +1;

  print('-' * 50);
  print('O número digitado foi ${numero}, seu antecessor é ${antecessor} e seu sucessor é ${sucessor}');
  print('-' * 50);
}