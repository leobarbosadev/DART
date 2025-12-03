import 'dart:io';

class Triangulo {
  //Atributos
  double base;
  double altura;

  //Método construtor
  Triangulo(this.base, this.altura);

  //Método para calcular a área
  double calculcarArea(){
    return (base * altura) / 2;
  }
}

void main(){
  //Entra de dados
  print('');
  stdout.write('Digite a medida da base do triângulo: ');
  double base = double.parse(stdin.readLineSync()!);

  stdout.write('Digite a medida da altura do triângulo: ');
  double altura = double.parse(stdin.readLineSync()!);

  //Instanciando o objeto
  Triangulo triangulo = Triangulo(base, altura);
  double area = triangulo.calculcarArea();

  //Saida
  print('A área do triângulo é: $area');
  print('-' * 70);
}