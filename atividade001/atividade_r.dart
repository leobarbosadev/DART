import 'dart:io';

void main(){
  // stdout.write('1 - Celsius -> Fahrenheit  \n2 - Fahrenheit -> Celsius \nSelecione uma das opções acima: ');
  print('1 - Celsius -> Fahrenheit');
  print('2 - Fahrenheit -> Celsius');
  stdout.write('Escolha uma das opções acima: ');
  String? selecionar = stdin.readLineSync();

  if(selecionar != null && selecionar.isNotEmpty){
    int escolha = int.parse(selecionar);
    double resultado;

    switch(escolha){
      case 1:
        stdout.write('Digite uma temperatura em Celsius para converter para Fahrenheit: ');
        String? cParaF = stdin.readLineSync();
        double celsius = double.parse(cParaF!);

        resultado = ( celsius * 1.8) + 32;

        print('A temperatua ${celsius}°C equivale a ${resultado.toStringAsFixed(2)}°F');
        break;

      case 2:
        stdout.write('Digite uma temperatura em Fahrenheit para converter para Celsius: ');
        String? fParaC = stdin.readLineSync();
        double fahrenheit = double.parse(fParaC!);

        resultado = (fahrenheit - 32) * (5/9);

        print('A temperatua ${fahrenheit}°F equivale a ${resultado.toStringAsFixed(2)}°C');
        break;

      default:
      print('Opção inválida, escolha outra opção');
    }
  }else{
    print('-' * 50);
    print('Valor em branco, digite um valor para realizar a conversão');
  }
}