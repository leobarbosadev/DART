import 'dart:io';

void main(){
  stdout.write('Entre com um valor em real: ');
  String? val = stdin.readLineSync();

  if(val != null && val.isNotEmpty){
    double valor = double.parse(val);

    double reaLDolar = valor / 5.45;
    double realEuro = valor / 6.35;
    double realWons = valor * 260.7;

    print('-' * 50);
    print('Real em Dólar: ${reaLDolar.toStringAsFixed(2)}');
    print('Real em Euro: ${realEuro.toStringAsFixed(2)}');
    print('Real em Wons: ${realWons.toStringAsFixed(2)}');
  }else{
    print('-' * 50);
    print('Valor em branco, digite um valor para convertermos');
  }
}