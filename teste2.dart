//Entra com 4 notas e exibe a media
import 'dart:io';

void main(){  
  double soma = 0.0;

  print('/' * 50);
  print('==MÉDIA DE ALUNOS==');
  print('/' * 50);

  while(true){
    
    for(int i = 1; i <=4; i++){
      stdout.write('Digite a ${i}ª nota: ');
      String? entrada = stdin.readLineSync();
    
    if(entrada != null && entrada.isNotEmpty){
        double? nota = double.tryParse(entrada);
        if( nota != null){ //Aqui o tryParse consegue fazer a conversão
          soma += nota;
        }else{ // Se o tryParse retornar nulo (usuario digitar uma letra) cai nesse else
          print('Digite somente números!!');
        }
    }
    }
        double media = soma / 4;
        print('Media: ${media}');

    stdout.write('Deseja continuar? (s/n)');
    String? escolha = stdin.readLineSync();

    if(escolha != 's' || escolha !=null){
      print('Finalizando o programa!!');
      break;
  }
  }
}