//Resfriamento de um líquido: Faça um programa que simule o resfriamento de um
//líquido a partir de uma temperatura inicial até atingir a temperatura ambiente (25°C). A cada segundo,
//a temperatura diminui 2%. Imprima a temperatura a cada segundo
import 'dart:io';


void main(){
  while(true){
    print('=== RESFRIAMENTO DE LÍQUIDO ===');
    stdout.write('Entre com uma temperatura: ');
    String? entrada = stdin.readLineSync();

    
    if(entrada != null && entrada.isNotEmpty){
      double? temperatura = double.tryParse(entrada);
      double temperaturaFria;
      int duracaoResfriamento = 0;

      if(temperatura ==  null){
        print('Digite somente números');
      }else{
        while(true){
            if(temperatura! > 25){
              temperaturaFria = (2/100) * temperatura;

              temperatura -= temperaturaFria;
            }else{
              print('Temperatura após o resfriamento: ${temperatura.toStringAsFixed(2)}°C');
              print('Tempo total de resfriamento: ${duracaoResfriamento}s');
              break;
            }
              print('Líquido resfriando, temperatura atual ${temperatura.toStringAsFixed(2)}°C');
              sleep(Duration(seconds: 1));
              duracaoResfriamento += 1;
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