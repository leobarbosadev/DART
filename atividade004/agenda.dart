/**
 * Projeto 4 – Agenda de Contatos Inteligente(Gil - Leo - Coly)
O quarto e último projeto integra todos os conceitos estudados em uma aplicação mais completa:
 uma agenda de contatos inteligente. O sistema deve utilizar uma lista de mapas (List<Map<String, String?>>)
 para armazenar os contatos, sendo que cada mapa deve conter as chaves ‘nome’, ‘telefone’ e ‘email’.
 O programa deve disponibilizar um menu interativo que permita cadastrar, listar, buscar, atualizar e remover contatos.
 Durante o cadastro, o nome é obrigatório e deve ser validado para evitar valores nulos ou vazios;
 os demais campos, caso não sejam informados, devem receber o valor “Não informado”. O nome deve ser formatado para exibir a primeira
 letra maiúscula, utilizando métodos de manipulação de strings. Todas as operações — como buscas, atualizações e listagens —
 devem ocorrer por meio do acesso direto às chaves do Map, manipulando os dados internamente com expressões como contato['email'] ou contato['telefone'].
 O programa deve empregar o método .where() para filtrar contatos por nome, ignorando diferenças entre maiúsculas e minúsculas.
 O uso de operadores de null safety deve garantir a estabilidade da aplicação e evitar exceções. Como desafio adicional,
 o aluno poderá desenvolver uma função que conte quantos contatos possuem e-mail cadastrado ou até salvar os dados em um arquivo de texto,
 consolidando o domínio da estrutura Map aplicada em um contexto realista.
 */

//‘nome’, ‘telefone’ e ‘email’
// menu - cadastrar, listar, buscar, atualizar e remover
import 'dart:io';

void main(){
  // List<Map<String, String?>> agenda = [];
  List<Map<String, String?>> agenda2 = [
    {'nome' : 'Joao', 'telefone' : '88554477', 'email' : 'joao@teste.com'},
    {'nome' : 'Maria', 'telefone' : '11223344', 'email' : 'maria@teste.com'}
    ];

  
  print('=== AGENDA INTELIGENTE ===');
  while(true){
    print('1 - Cadastrar');
    print('2 - Listar');
    print('3 - Buscar');
    print('4 - Atualizar');
    print('5 - Remover');
    stdout.write('Escolha uma opção: ');
    String? escolha = stdin.readLineSync();

    if(escolha != null && escolha.isNotEmpty){

      switch(escolha){
        case '1':
          while(true){
            stdout.write('Deseja cadastrar mais contatos? (s/n) ');
            String? cadastro = stdin.readLineSync();
            if(cadastro!.toLowerCase() == 's'){
              continue;
            }else{
              print('Dados cadastrados com sucesso');
              break;
            }
          }

        case '2':
          print('-'  * 70);
          for (var pessoa in agenda2){
            print('Nome: ${pessoa['nome']}');
            print('E-mail: ${pessoa['email']}');
            print('Telefone: ${pessoa['telefone']}');
            print('-'  * 70);
          }
            print('');
      }
    }
  }
}