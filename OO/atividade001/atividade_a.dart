//Faça um programa que peça 2 valores. Calcule e imprima 
//a soma, a subtração o produto, a divisão, o resto da divisão e a divisão inteira.

import 'dart:io';

class OperacoesMatematica{
  //Atributos
  double numero1;
  double numero2;

  //Construtor da classe
  OperacoesMatematica({
    required this.numero1,
    required this.numero2,
  });

  //Método para soma
  double calcularSoma(){
    return numero1 + numero2;
  }

  //Método para subtração
  double calcularSubtracao(){
    return numero1 - numero2;
  }

  //Método para multiplicação
  double calcularMultiplicacao(){
    return numero1 * numero2;
  }

  //Método para divisão e resto
  double? calcularDivisao(){
    if(numero2 == 0){
      print('Não existe divisão por zero!!');
      return null;

    }else{
      var divisao = numero1 / numero2;
      return divisao;
    }
  }

  //Método para resto
  double calcularResto(){
    return numero1 % numero2;
  }

  //Método para divisaõ inteira
  int calcularDivInteira(){
    return numero1 ~/ numero2;
  }
}

void main(){
  while(true){
    // print("\x1B[2J\x1B[0;0H");
    print('=== OPERAÇÕES BÁSICAS ===');
    stdout.write('Digite o primeiro número: ');
    double entradaNumero1 = double.parse(stdin.readLineSync()!);

    stdout.write('Digite o segundo valor: ');
    double entradaNumero2 = double.parse(stdin.readLineSync()!);

    //Instanciando o objeto (classe)
    OperacoesMatematica numero = OperacoesMatematica(numero1: entradaNumero1, numero2: entradaNumero2);
    double soma = numero.calcularSoma();
    double subtracao = numero.calcularSubtracao();
    double multiplicacao = numero.calcularMultiplicacao();
    double? divisao = numero.calcularDivisao();
    double resto = numero.calcularResto();
    int divisaoInteira = numero.calcularDivInteira();

    //Saida
    print('-' * 70);
    print('A soma de $entradaNumero1 + $entradaNumero2 = $soma');
    print('A subtração de $entradaNumero1 - $entradaNumero2 = $subtracao');
    print('A multiplicação de $entradaNumero1 × $entradaNumero2 = $multiplicacao'); //tecla Alt + 0215 para símbolo de multiplicação
    print('A divisão de $entradaNumero1 ÷ $entradaNumero2  $divisao'); //tecla Alt +  246 para símbolo de divisão
    print('O resto de $entradaNumero1 ÷ $entradaNumero2  $resto');
    print('A divisão inteira de $entradaNumero1 ÷ $entradaNumero2 = $divisaoInteira');
    print('-' * 70);

  }
}