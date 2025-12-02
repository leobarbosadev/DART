//Cálculo de Média Ponderada Após Descarte
//Considere uma lista de notas de alunos. O exercício exige que se descarte a menor nota da lista e, em seguida,
//calcule a média aritmética das notas restantes. O resultado deve ser um número decimal (double).

import 'dart:io';

void descartarMenorNota({required List<double> notas}){ //void pq não tem return
    //Encontra a menor nota
    double menorNota = notas[0];  
    for( double nota in notas){
      if(nota < menorNota){
        menorNota = nota;
      }
    }
      //Exibe todas as notas
      stdout.write('Todas as notas: ');
      notas.forEach((nota) => stdout.write('$nota, '));

      print('');
      print('Menor nota descartada: ${menorNota}');
      print('');
      
      //Remove a menor nota da lista
      notas.remove(menorNota);

      //Calcula a soma das notas restantes
      double somaNotas = 0;
      for(double nota in notas){
        somaNotas += nota;
      }
      
      //Calcula a média
      double media = somaNotas / notas.length;

      //Exibe as notas restantes e média
      stdout.write('Notas válidas: ');
      notas.forEach((nota) => stdout.write('$nota, '));
      print('');
      print('Média das notas: ${media.toStringAsFixed(2)}');

}

void main(){
      List<double> notas = [10.0, 3.0, 8.0, 2.0];

  while(true){
    //Chama a função com as notas
    descartarMenorNota(notas: notas);
    
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

