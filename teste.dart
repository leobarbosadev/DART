//VERIFICAR SE É PAR OU ÍMPAR
// import 'dart:io';


// void main(){
//   while(true){
//     stdout.write('Entre com um valor: ');
//     String? entrada = stdin.readLineSync();


//     if(entrada != null && entrada.isNotEmpty){
//       int? valor = int.tryParse(entrada); // AQUI TENTA FAZER O PARSE PARA int
//       if(valor == null){ // AQUI NÃO FOI POSSÍVEL FAZER O PARSE
//         print('Digite somente números!');
//         continue;
//       }else{ // AQUI FOI FEITO O PARSE
//         if(valor % 2 == 0){
//           print('O número ${valor} é par!!!');
//         }else{
//           print('O número ${valor} é ímpar!!!');
//         }
//       }
//     }
//     stdout.write('Deseja continuar? (s/n) ');
//     String? resposta = stdin.readLineSync();

//     if(resposta == null || resposta.isEmpty){
//       print('valor inválido');
//       continue;
//     }
//     if(resposta.toLowerCase() == 's'){
//       continue;
//     }else{
//       print('Programa encerrado!!!');
//       break;
//     }
//   }
// }


// TESTE PARA CONTAR NUMEROS DUPLIADOS
// for(numero in numeros){
//     contador = 0;
//     numero == numero
//     contador +=1
//   }

// import 'dart:io';

// class Calcular{
//   //Atributos
//   List<double> lista_notas;
//   //Método construtor com parâmetros nomeados
//   Calcular({ //Método construtor tem que ser o mesmo nome que a classe
//     required this.lista_notas,
//   });

//   //Método para calcular a méda
//   calcularMedia(){
//     double soma = lista_notas.reduce((a, b) => a + b); // Realiza a soma de todos os elementos da lista
//     double media = soma / lista_notas.length;
//     // return media;
//       print('=' * 50);
//       print('A média das notas é ${media.toStringAsFixed(2)}');
//       print('=' * 50);
//   }
// }

// void main(){
//   print('=== MÉDIA DE NOTAS ===');
//   List<double> lista = [];
//   for(int i = 1 ; i <= 4; i++){
//     stdout.write('Digite a ${i}ª nota: ');
//     double nota = double.parse(stdin.readLineSync()!);
//     lista.add(nota);
//   }
//   print('-' * 50);
//   int i = 1;
//   for(var nota in lista){
//     print('${i++}ª nota: $nota');
//     // print('-' * 50);
//   }


//   //Instanciando o objeto(classe)
//   // Calcular notas = Calcular(lista_notas: lista);
//   Calcular notas = Calcular(lista_notas: lista);
//   notas.calcularMedia();
// }



// import 'dart:io';

// class Calcular{
//   //Atributos
//   List<double> lista_notas;
//   //Método construtor com parâmetros nomeados
//   Calcular({ //Método construtor tem que ser o mesmo nome que a classe
//     required this.lista_notas,
//   });

//   //Método para calcular a méda
//   calcularMedia(){
//     double soma = lista_notas.reduce((a, b) => a + b); // Realiza a soma de todos os elementos da lista
//     double media = soma / lista_notas.length;
   
//     return media;
//   }

//   situacao(media){
//     if(media < 6){
//       // print('REPROVADO');
//       return 'REPROVADO';
//     }else{
//       // print('APROVADO');
//       return 'APROVADO';
//     }
//   }
// }

// void main(){
//   List<double> lista = [];
//   for(int i = 1 ; i <= 4; i++){
//     stdout.write('Digite a ${i}ª nota: ');
//     double nota = double.parse(stdin.readLineSync()!);
//     lista.add(nota);
//   }
//   print('-' * 50);
//   int i = 1;
//   for(var nota in lista){
//     print('${i++}ª nota: $nota');
//     // print('-' * 50);
// }


//   //Instanciando o objeto(classe)
//   Calcular notas = Calcular(lista_notas: lista);
//   double mostar_media = notas.calcularMedia();
//   String mencao = notas.situacao(mostar_media);

//   print('=' * 50);
//   print(mencao);
//   print('A média das notas é ${mostar_media.toStringAsFixed(2)}');
//   print('=' * 50);
// }