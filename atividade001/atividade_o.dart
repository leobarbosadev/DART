import 'dart:io';

void main(){
  stdout.write('Entre com um valor: ');
  String? val = stdin.readLineSync();

  if (val != null && val.isNotEmpty){
    double valor = double.parse(val);

    if(valor % 2 == 0 ){
      print('-' * 50);
      print('O valor digitado foi ${valor}, somado 5 foi para ${valor + 5}');
    }else{
      print('-' * 50);
      print('O valor digitado foi ${valor}, somado 8 foi para ${valor + 8}');
    }
  }else{
    print('-' * 50);
    print('Valor em branco, digite um valor para realizar a soma.');
  }
}