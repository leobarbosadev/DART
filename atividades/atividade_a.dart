import 'dart:io';

void main(){
  stdout.write('Entre com uma frase: ');
  String? frase = stdin.readLineSync();

  frase = (frase == null || frase.isEmpty) ? 'Não informado' : frase;

  print(frase);
}