import 'dart:io';

void main(){
  stdout.write('Entre com um valor para ver sua tabuada: ');
  String? val = stdin.readLineSync();

  if(val != null && val.isNotEmpty){
    int valor = int.parse(val);

    for(int i = 1; i <= 10; i++){
      print('${valor} x ${i} = ${valor * i}');
    }
  } else{
    print('-' * 50);
    print('Valor em branco, digite alguma coisa para exibir a tabuada.');
    print('-' * 50);
  }
}