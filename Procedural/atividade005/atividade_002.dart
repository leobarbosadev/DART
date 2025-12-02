//Identificação e Contagem de Ocorrências Distintas
//Dada uma lista de inteiros que contém valores duplicados, o desafio é determinar quantos valores únicos existem na lista.
//A solução deve percorrer a lista e construir uma nova coleção (ou usar um Set temporário, se permitido, ou uma lista auxiliar)
//para armazenar apenas os elementos  sem repetição, reportando o total de elementos únicos ao final.

import 'dart:io';
  List<int> inteiroVariados = [3, 3, 4, 8, 7, 5, 2];

void valoresUnicos({required List<int> inteiroVariados}){ // void pq não tem return
  var inteirosUnicos = inteiroVariados.toSet().toList();

  print('Nova lista: ${inteirosUnicos}');
  print('Total de elementos únicos: ${inteirosUnicos.length}');

}


void main(){
  while(true){
    valoresUnicos(inteiroVariados: inteiroVariados);
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
