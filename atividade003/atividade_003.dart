//Cálculo de Média Ponderada Após Descarte
//Considere uma lista de notas de alunos. O exercício exige que se descarte a menor nota da lista e, em seguida,
//calcule a média aritmética das notas restantes. O resultado deve ser um número decimal (double).

import 'dart:io';

void main(){
  while(true){
    List<double> notas = [3.0, 3.0, 8.0, 10.0];

    double menorNota = notas[0];
  
    for( double nota in notas){
      if(nota < menorNota){
        menorNota = nota;
      }
    }
      stdout.write('Todas as notas: ');
      notas.forEach((nota) => stdout.write('$nota, '));

      print('');
      print('Menor nota descartada: ${menorNota}');
      print('');
      
      notas.remove(menorNota);

      double somaNotas = 0;

      for(double nota in notas){
        somaNotas += nota;
      }

      double media = somaNotas / notas.length;

      stdout.write('Notas válidas: ');
      notas.forEach((nota) => stdout.write('$nota, '));
      print('');
      print('Média das notas: ${media.toStringAsFixed(2)}');



    print('');
    stdout.write('Desja continuar? (s/n) ');
    String? escolha = stdin.readLineSync();

    if (escolha == null || escolha.trim().isEmpty) {
      print('Valor inválido!!!');
      print('');
      continue;
    }
    if (escolha.toLowerCase() == 's') {
      continue;
    } else {
      print('Programa encerrado!!!');
      break;
    }
  }
}

