import 'dart:io';

void main(){
  double soma = 0.0;

  for(int i = 1; i <= 4; i++){
    stdout.write('Ente com a ${i}ª nota: ');
    String? entrada = stdin.readLineSync();
  
  //Null Safety
  if(entrada != null && entrada.isNotEmpty){
    double nota = double.parse(entrada);
        soma += nota;
  }else{
    print('Valores em branco, digite as notas para calcular a média!');
  }
  }
  double media = soma / 4;

  print('A média das notas é ${media}');
}