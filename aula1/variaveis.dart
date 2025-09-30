void main(){
  //Valores inteiros
  int idade = 50;
  
  //Valores com ponto flutuante
  double altura = 1.80;
  
  //Valores booleanos
  bool opcao = true;
  
  //Valores do tipo String
  String nome = "John Doe";
  
  //==============================//
  //Demonstração de inferência
  var teste = 'José'; // tipo inferido: String
  //teste = 100; //ERRO: não é possível atribuir int a uma variavel do tipo String
  
  var numero = 10; // tipo inferido: int
  //teste = 'dez'; //ERRO: não é possível atribuir String a uma variavel do tipo int.
  
  //==============================//
  //Saida formata usando template string
  print('-' * 70);
  print('Meu nome é $nome, tenho $idade anos.');
  print('Minha altura é ${altura.toStringAsFixed(2)}m.');
  print('Esta aula é uma aula de Dart? $opcao');
  print('-' * 70);
}