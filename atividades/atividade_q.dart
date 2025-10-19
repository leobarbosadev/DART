import 'dart:io';
import 'dart:math';

void main(){
  stdout.write('Digite seu peso: ');
  String? entradaPeso = stdin.readLineSync();

  stdout.write('Digite sua altura: ');
  String? entradaAltura = stdin.readLineSync();

  if(entradaPeso != null && entradaPeso.isNotEmpty && entradaAltura != null && entradaAltura.isNotEmpty){
    double peso = double.parse(entradaPeso);
    double altura = double.parse(entradaAltura);
    double resIMC;

    resIMC = peso / pow(altura, 2);


//   Menor que 18,5	Abaixo do peso	Pode indicar desnutrição
// 40,0 ou mais	Obesidade grau III (mórbida)
    if(resIMC < 18.5){
      print('IMC: ${resIMC.toStringAsFixed(2)} | Desnutrição');
    }else if(resIMC >= 18.5 && resIMC <= 24.9){
      print('IMC: ${resIMC.toStringAsFixed(2)} | Peso normal');
    }else if(resIMC >= 25.0 && resIMC <=29.9){
      print('IMC: ${resIMC.toStringAsFixed(2)} | Sobrepeso');
    }else if(resIMC >= 30.0 && resIMC <= 34.9){
      print('IMC: ${resIMC.toStringAsFixed(2)} | Obesidade grau 1');
    }else if(resIMC >= 35.0 && resIMC <= 39.9){
      print('IMC: ${resIMC.toStringAsFixed(2)} | Obesidade grau 2');
    }else{
      print('${resIMC.toStringAsFixed(2)} | Obesidade grau 3');
    }
  }else{
    print('-' * 50);
    print('Valores em branco, digite um peso e uma altura para calcular o IMC.');
  }
}