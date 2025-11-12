import 'dart:io';

void main(){
  stdout.write('Digite o primeiro número: ');
  String? primeiroValor = stdin.readLineSync(); //String? permite null | stdin.readLineSync() lê e guarda o que o ususário digitou, sempre guarda uma string

  stdout.write('Digite o segundo número: ');
  String? segundoValor = stdin.readLineSync();

  stdout.write('Digite o terceiro valor: ');
  String? terceiroValor = stdin.readLineSync();

  if(primeiroValor != null && primeiroValor.isNotEmpty && segundoValor != null && segundoValor.isNotEmpty && terceiroValor != null && terceiroValor.isNotEmpty){
    
    int valorA = int.parse(primeiroValor);
    int valorB = int.parse(segundoValor);
    int valorC = int.parse(terceiroValor);

    //EM FORMA DE LISTA -array- (MAIS FÁCIL)
    // List<int> numerosInteiros = [valorA, valorB, valorC];
    //comparando os valores e exibindo em ordem decescente
    // numerosInteiros.sort((a, b) => b.compareTo(a),);
    // print('${numerosInteiros. join(', ')}');

    if((valorA == valorB) || (valorA == valorC) || (valorC == valorB)){
      print('Os números são iguais, você deve digitar todos os números diferentes');
    }else if(valorA > valorB && valorA > valorC){
      if(valorB > valorC){
        print('${valorA}, ${valorB}, ${valorC}');
      }else{
        print('${valorA}, ${valorC}, $valorB');
      }
    }else if(valorB > valorA && valorB > valorC){
      if(valorA > valorC){
        print('${valorB}, ${valorA}, ${valorC}');
      }else{
        print('${valorB}, ${valorC}, ${valorA}');
      }
    }else{
      if(valorA > valorB){
        print('${valorC}, ${valorA}, ${valorB}');
      }else{
        print('${valorC}, ${valorB}, ${valorA}');
      }
    }
  }else{
    print('-' * 50);
    print('Valores em branco, digites três valores para mostrar em orem decrescente.');
  }
}