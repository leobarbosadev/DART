import 'dart:io';

void main(){
  stdout.write('Entre com o primeiro valor: ');
  String? primeiroValor = stdin.readLineSync();

  stdout.write('Entre com o segundo valor: ');
  String? segundoValor = stdin.readLineSync();

  if(primeiroValor != null && primeiroValor.isNotEmpty &&
  segundoValor != null && segundoValor.isNotEmpty){
    int valorC;
    int valorA = int.parse(primeiroValor);
    int valorB = int.parse(segundoValor);

    if(valorA == valorB){
      valorC = valorA + valorB;
      print('-' * 50);
      print('Os valores sao iguais | ${valorA} + ${valorB} = ${valorC}');
    }else{
      valorC = valorA * valorB;
      print('-' * 50);
      print('Os valores são diferentes | ${valorA} x ${valorB} = ${valorC}');
    }
  }else{
    print('-' * 50);
    print('Valores em branco, digite alguns valores para calcularmos');
  }
}