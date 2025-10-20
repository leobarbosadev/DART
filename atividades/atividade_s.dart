import 'dart:io';
import 'dart:math';

void main(){
  stdout.write('Digite o valor do seu capital: ');
  String? valorA = stdin.readLineSync();

  stdout.write('Digite a taxa de juros ao mês (%): ');
  String? valorB = stdin.readLineSync();

  stdout.write('Digite o tempo em meses: ');
  String? valorC = stdin.readLineSync();

  double capital = double.parse(valorA!);
  double taxa = double.parse(valorB!) / 100;
  int tempo = int.parse(valorC!);
  double jurosSimples;
  double jurosCompostos;
  double montanteFinal;

  jurosSimples = capital * taxa * tempo; //jurosSimples = capital * (1 + taxa * tempo) assim posso comentar a linha 22
  montanteFinal = capital + jurosSimples;
  
  jurosCompostos = capital * pow((1 + taxa), tempo);

  print('');
  print('== JUROS SIMPLES ==');
  // print('Um capital de R\$${capital} com uma taxa de juros de ${taxa * 100}% ao mês durante ${tempo} meses, no final terá R\$${jurosSimples.toStringAsFixed(2)}');
  print('Um capital de R\$${capital} com uma taxa de juros de ${taxa * 100}% ao mês durante ${tempo} meses, no final terá R\$${montanteFinal.toStringAsFixed(2)}');
  print('*' * 50);
  print('== JUROS COMPOSTOS ==');
  print('Um capital de R\$${capital} com uma taxa de juros de ${taxa * 100}% ao mês durante ${tempo} meses, no final terá R\$${jurosCompostos.toStringAsFixed(2)}');



}