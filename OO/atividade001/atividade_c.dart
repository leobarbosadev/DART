//Faça um programa que peça 4 notas com  entrada de dados. O programa deverá calcular a média das notas digitadas.

import 'dart:io';

class Calcular{
  //Atributos
  List<double> lista_notas;
  //Método construtor com parâmetros nomeados
  Calcular({ //Método construtor tem que ser o mesmo nome que a classe
    required this.lista_notas,
  });

  //Método para calcular a méda
  calcularMedia(){
    double soma = lista_notas.reduce((a, b) => a + b); // Realiza a soma de todos os elementos da lista
    double media = soma / lista_notas.length;
    // if(media < 6){
    //   print('REPROVADO');
    // }else{
    //   print('APROVADO');
    // }
    // return media;
  }
}

void main(){
  List<double> lista = [];
  for(int i = 1 ; i <= 4; i++){
    stdout.write('Digite a ${i}ª nota: ');
    double nota = double.parse(stdin.readLineSync()!);
    lista.add(nota);
  }
  print('-' * 50);
  int i = 1;
  for(var nota in lista){
    print('${i++}ª nota: $nota');
    // print('-' * 50);
}


  //Instanciando o objeto(classe)
  Calcular notas = Calcular(lista_notas: lista);
  double mostar_media = notas.calcularMedia();
  print('=' * 50);
  print('A média das notas é ${mostar_media.toStringAsFixed(2)}');
  print('=' * 50);
}