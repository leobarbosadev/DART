import 'dart:io';

void main(){

  stdout.write('Digite o ano do seu nascimento: ');
  String? ano = (stdin.readLineSync());

  //Null Safety
  if(ano != null && ano.isNotEmpty){
    int anoNasc = int.parse(ano);

    int idade = 2025-anoNasc;

    print('A sua idade é: ${idade} anos');
  }else{
    print('Valor em branco, digite alguma coisa');
  }
}