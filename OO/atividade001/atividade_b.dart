//Faça um programa que peça um ano qualquer. O programa deverá calcular e imprimir a idade.

import 'dart:io';

class Calcular{
  //Atributo
  int anoNascimento;

  //Método construtor com parâmetros nomeados
  Calcular({
    required this.anoNascimento
  });

  //Método para calcular a idade
  calcularIdade({required int anoAtual}){
    return anoAtual - anoNascimento;
  }
}

void main(){
  stdout.write('Digite o ano de nascimento: ');
  int ano = int.parse(stdin.readLineSync()!);

  //Instanciando o objeto
  Calcular idade = Calcular(anoNascimento: ano);

  int exibirIdade = idade.calcularIdade(anoAtual: DateTime.now().year);

  print('Sua idade é ${exibirIdade} anos');
}