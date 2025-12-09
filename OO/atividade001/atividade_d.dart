//Faça um programa que receba e divida 2 números. A saída da divisão precisará ser formatada com 4 casas decimais.

import 'dart:io';

class Calcular{
  //Atributos
  double numero_1;
  double numero_2;

  //Método construtor com parâmetros nomeados
  Calcular({
    required this.numero_1,
    required this.numero_2
  });

  //Método para calcular a divisão
  calcularDivisao(){

    if(numero_2 == 0){
      return null;
    }else{
      double divisao = numero_1 / numero_2;
      return divisao;
    }
  }
}

void main(){
  stdout.write('Digite o primeiro número: ');
  double numero_1 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o segundo número: ');
  double numero_2 = double.parse(stdin.readLineSync()!);

  //Instanciando o objeto de classe
  Calcular calcular = Calcular(numero_1: numero_1, numero_2: numero_2);

  //Invocando o método
  double? mostrar_divisao = calcular.calcularDivisao();

   // Verificar se o valor retornado é null
  if (mostrar_divisao == null) {
    print('Não existe divisão por 0 favor digitar outro número');
  }else {
    print('O resultado de ${numero_1} ÷ ${numero_2} = ${mostrar_divisao.toStringAsFixed(4).replaceAll('.', ',')}');
  }
}