import 'dart:io';

void main(){
  stdout.write('Entre com o primeiro valor: '); // stdout permite escrever no final da frase, sem quebra de linha
  String? primeiroVal = (stdin.readLineSync()); //stdin.readLineSync() aguarda o usuário digitar e retorna o valor como uma string.

  stdout.write('Entre com o segundo valor: ');
  String? segundoVal = (stdin.readLineSync());

  if(primeiroVal != null && primeiroVal.isNotEmpty && segundoVal !=null && segundoVal.isNotEmpty){
    int valor1 = int.parse(primeiroVal); //fazendo casting
    int valor2 = int.parse(segundoVal);

    int soma = valor1 + valor2;
    int subtracao = valor1 - valor2;
    int multiplicacao = valor1 * valor2;
    double divisao = valor1 / valor2;
    int divInteira = valor1 ~/ valor2;
    int resto = valor1 % valor2;

    print('-' * 50);
    print('A soma de ${valor1} e ${valor2} = ${soma}');
    print('A subtracao de ${valor1} - ${valor2} = ${subtracao}');
    print('A multiplicacao de ${valor1} e ${valor2} = ${multiplicacao}');
    print('A divisao de ${valor1} por ${valor2} = ${divisao.toStringAsFixed(2)}');
    print('A divisao inteira de ${valor1} por ${valor2} = $divInteira');
    print('O resto da divisao de ${valor1} por ${valor2} = ${resto}');
    print('-' * 50);
  }else{
    print('-' * 50);
    print('Valores em branco, digite alguma coisa para realizarmos os calculos');
    print('-' * 50);
  }
}