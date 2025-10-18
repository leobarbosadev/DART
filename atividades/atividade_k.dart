import 'dart:io';
import 'dart:math';

void main(){
  print('1 - Area do quadrado');
  print('2- Area do retangulo');
  print('3 - Area do circulo');
  print('4 - Area do triangulo');
  stdout.write('Escolha uma opcao: '); //para a entrada de dados ser na mesma linha
  String? escolha = stdin.readLineSync();

  if (escolha != null && escolha.isNotEmpty){
    double resultado;

    switch(escolha){
      case '1':
        stdout.write('Digite o valor do lado do quadrado: ');
        String? ladoQuadrado = stdin.readLineSync();

        double ladoConvertido = double.parse(ladoQuadrado!);

        resultado = pow(ladoConvertido, 2).toDouble();

        print('A area do quadrado e de: ${resultado.toStringAsFixed(2)}');
        
      case '2':
        stdout.write('Digite o valor da base do retangulo: ');
        String? baseRetangulo = stdin.readLineSync();

        stdout.write('Digite o valor da altura do retangulo: ');
        String? alturaRetangulo = stdin.readLineSync();

        double baseConvertida = double.parse(baseRetangulo!);

        double alturaConvertida = double.parse(alturaRetangulo!);

        resultado = baseConvertida * alturaConvertida;

        print('A area do retangulo e de: ${resultado.toStringAsFixed(2)}');
        break;

      case '3':
        stdout.write('Digite o valor do raio: ');
        String? raio = stdin.readLineSync();

        double raioConvertido = double.parse(raio!);

        resultado = pi * pow(raioConvertido, 2);

        print('A area do circulo e de ${resultado.toStringAsFixed(2)}');
        break;
      
      case '4':
        stdout.write('Digite o valor da base do triangulo: ');
        String? baseTriangulo = stdin.readLineSync();

        stdout.write('Digite o valor da altura do triangulo: ');
        String? alturaTriangulo = stdin.readLineSync();

        double baseTriConvertida = double.parse(baseTriangulo!);

        double alturaTriConvertida = double.parse(alturaTriangulo!);

        resultado = (baseTriConvertida * alturaTriConvertida) / 2;

        print('A area do triangulo e de: ${resultado.toStringAsFixed(2)}');

      default:
        print('Fora do intervalo de opções');
    }
  }else{
    print('Valor em branco ou nulo');
  }

  
}