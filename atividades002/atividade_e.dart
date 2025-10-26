//Tabela de velocidades: Faça um programa que leia o tempo (em segundos) e a aceleração constante de um objeto
//e imprima sua velocidade a cada segundo até o tempo informado.
import 'dart:io';

void main(){
  while(true){
    stdout.write('Digite o tempo em segundos: ');
    String? entradaTempo = stdin.readLineSync();

    stdout.write('Digite a aceleração em m/s²: ');
    String? entradaAceleracao = stdin.readLineSync();

    if(entradaTempo != null && entradaTempo.isNotEmpty && entradaAceleracao != null && entradaAceleracao.isNotEmpty){
      int? tempo = int.tryParse(entradaTempo);
      double? aceleracao = double.tryParse(entradaAceleracao);
      double velocidade;

      if(tempo == null || aceleracao == null){
        print('Digite um valor válido');
      }else{
        for(int i = 1; i <= tempo; i++){ //VELOCIDADE A CADA SEGUNDO
          velocidade = aceleracao * i;
          print('${i}s = ${velocidade.toStringAsFixed(2)}m/s');          
        }
      }
    }
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