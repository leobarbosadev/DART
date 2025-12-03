import 'dart:io';

//Classe Produto com construtor padrão e construtores nomeados
class Produto{
  String nome;
  double preco;

  //Construtor padrão: recebe nome e preço digitados pelo usuário
  Produto(this.nome, this.preco);

  //Construtor nomeado: cria um produto gratuito
  //O usuário informa só o nome, e o preço é automaticamente zero
  Produto.gratuito(this.nome) : preco = 0.0;

  //Construtor nomeado: cria um produto com valores fixos
  Produto.oferta() : nome = 'PlayStation 5 Pro', preco = 1000;

  //Método para exibir os dados do produto
  void exibir(){
    print('\n--- Dados do produto ---');
    print('Nome: $nome');
    print('Preço: R\$ $preco');
  } 
}

void main(){
  //Entrada de dados
  stdout.write('Digite o nome do produto: ');
  String nome = stdin.readLineSync() ?? 'Desconhecido';

  //Pergunta o preço do produto
  stdout.write('Digite o preço do produto: ');
  double preco = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  //Criação dos objetos usando diferentes construtores

  //Produto criado com o construtor padrão (nome + preço)
  Produto p1 = Produto(nome, preco);

  //Produto gratuito usando construtor nomeado
  Produto p2 = Produto.gratuito('Amostra Grátis');

  //Produto padrão usando construtor nomeado
  Produto p3 = Produto.oferta();

  print('\nProdutos criado manualmente:');
  p1.exibir();
  
  p2.exibir();

  p3.exibir();
}