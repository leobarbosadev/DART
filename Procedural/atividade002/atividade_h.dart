//Cálculo de velocidade média: Faça um programa que receba a distância percorrida
//pelo tempo e calcule a velocidade média total do percurso.
import 'dart:io';


void main(){
  while(true){
    print('=== VELOCIDADE MÉDIA ===');
    stdout.write('Entre com a distância em metros: ');
    String? entrada_distancia = stdin.readLineSync();

    stdout.write('Entre com o tempo em segundos: ');
    String? entrada_tempo = stdin.readLineSync();

    if(entrada_tempo != null && entrada_tempo.isNotEmpty && entrada_distancia != null && entrada_distancia.isNotEmpty){
      int? tempo = int.tryParse(entrada_tempo);
      int? distancia = int.tryParse(entrada_distancia);
      double? media;

      if(tempo == null || distancia == null){
        print('Digite somente números positivos!!');
      }else{
        media = distancia / tempo;
      }
      print('A velocidade média é de ${media}m/s');
    }
  }
}