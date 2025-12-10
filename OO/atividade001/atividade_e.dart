//Faça um programa que recebe um número inteiro e mostre o sucessor e antecessor.

import 'dart:io';

class Calcular{
  //Aributos
  double numero;

  //Método construtor com parâmetros nomeados
  Calcular({
    required this.numero,
  });

  //Método para mostrar o sucessor e antecessor
  exibirVizinhos(){
    double antecessor = numero - 1;
    double sucessor = numero + 1;
  }
}
