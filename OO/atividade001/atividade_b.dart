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
  calcularIdade(){
    int anoAtual = DateTime.now().year;
    int idade = anoAtual - anoNascimento;
    return idade;
  }
}

void main(){
  stdout.write('Digite o ano de nascimento: ');
  int ano = int.parse(stdin.readLineSync()!);

  //Instanciando o objeto
  Calcular calcular = Calcular(anoNascimento: ano); // O calcular pode ser qualquer nome (o que está com letra minúscula)
  int idade = calcular.calcularIdade();

  print('Sua idade é ${idade} anos');
}