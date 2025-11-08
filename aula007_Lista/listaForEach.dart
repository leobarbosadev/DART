import 'dart:io';

void main(){
  //Listas de exemplo
  var numeros = [1, 2, 3, 4, 5];
  var letras = ['a', 'b', 'c', 'd', 'e'];

  //------------------------------------------------
  //ForEach ->percorre cada elemento da lista
  print('-' * 70);

  //(numero) -> variável que recebe cada elemento da lista
  // => Arrow function: simplifica funções de linha única
  numeros.forEach((numero) => print(numero));
  //Expliação
  //- função anônima: não tem nome, definida diretamente dentro do forEach
  //- '=>' indica que o resultado da expressão será retornado

  print('-' * 70);

  //Podemos usar qualquer nome de parâmetro, por exemplo 'e'
  //stdout.write imprime sem quebra de linha
  letras.forEach((e) => stdout.write('$e '));

  print(''); // quebra de linha final
  print('-' * 70);
}