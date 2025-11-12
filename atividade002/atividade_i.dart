//Classificação de ângulos: Faça um programa que receba um ângulo em graus e classifique-o como agudo
//(<90°), reto (90°), obtuso (>90° e <180°) ou raso (180°).
import 'dart:io';

void main(){
   while(true){
    print('=== EXIBINDO ÂNGULOS ===');
    stdout.write('Entre com um ângulo: ');
    String? entrada = stdin.readLineSync();

    if(entrada != null && entrada.isNotEmpty){
      int? angulo = int.tryParse(entrada);

      if(angulo == null){
        print('Digite somente números!');
      }else{
        if(angulo < 90){
          print('${angulo}° | ângulo agudo');
        }else if(angulo == 90){
          print('${angulo}° | ângulo reto');
        }else if(angulo > 90 && angulo < 180){
          print('${angulo}° | ângulo obtuso');
        }else if(angulo == 180){
          print('${angulo}° | ângulo raso');
        }else if(angulo > 180 && angulo < 360){
          print('${angulo}° | ângulo côncavo');
        }else{
          print('${angulo}° | ângulo completo');
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