import 'dart:io';

void main(){
  //Declarando variáveis
  stdout.write('Entre com o valor de A: ');
  var a = int.parse(stdin.readLineSync()!); // ESSA ! ME DIZ QUE O VALOR DIGITADO NÃO SERÁ NULO
  stdout.write('Entre com o valor de B: ');
  var b = int.parse(stdin.readLineSync()!);

  //Verificando as variáveis
  print('-' * 70);
  print('$a == $b Resultado: ${a == b}');
  print('$a ≠ $b Resultado: ${a != b}');
  print('$a > $b Resultado: ${a > b}');
  print('$a < $b Resultado: ${a < b}');
  print('$a ≥ $b Resultado: ${a >= b}');
  print('$a ≤ $b Resultado: ${a <= b}');

  //Podemos atribuir esses resultados em uma variável
  bool igual = a == b;
  print('Verificação de igualdade: $igual');
  print('-' * 70);
}