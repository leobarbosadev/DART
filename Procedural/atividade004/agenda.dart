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

import 'dart:io';

void main(){

List<Map<String, String?>> agenda = [
  {'nome' : 'Tulio', 'telefone' : '8888', 'email' : 'tulio@teste'}
];

  print('=== AGENDA INTELIGENTE ===');
  while(true){
    print('1 - Cadastrar');
    print('2 - Listar');
    print('3 - Buscar');
    print('4 - Atualizar');
    print('5 - Remover');
    print('6 - Sair');
    stdout.write('Escolha uma opção: ');
    String? escolha = stdin.readLineSync();

    if(escolha != null && escolha.isNotEmpty){

      switch(escolha){
        case '1':
          while(true){
            print("\x1B[2J\x1B[0;0H");
            print('== CADASTRAR ==');
            stdout.write('Digite o nome: ');
            String? nome = stdin.readLineSync();

            if(nome == null || nome.isEmpty){
            
              print('Nome não pode ser nulo!!');
              continue;
            }else{
            
            String primeiraLetra = nome[0].toUpperCase();
            String restoNome = nome.substring(1).toLowerCase();
            String nomeFormatado = primeiraLetra + restoNome;

            stdout.write('Digite o telefone: ');
            String? telefone = stdin.readLineSync();
            
            stdout.write('Digite o email: ');
            String? email = stdin.readLineSync();

            telefone = (telefone == null || telefone.isEmpty) ? 'Não informado' : telefone;

            email = (email == null || email.isEmpty) ? 'Não informado' : email;

            agenda.add({'nome' : nomeFormatado, 'telefone' : telefone, 'email' : email});
            print('Dados cadastrados com sucesso!!!');
            }

            stdout.write('Deseja cadastrar mais contatos? (s/n) ');
            String? cadastro = stdin.readLineSync();
            if(cadastro!.toLowerCase() == 's'){
              continue;
            }else{
              print('Dados cadastrados com sucesso');
              print("\x1B[2J\x1B[0;0H");
              break;
            }
          }

        case '2':
          print("\x1B[2J\x1B[0;0H");
          print('== LISTAR ==');
          print('-'  * 70);
          for (var pessoa in agenda){
            print('Nome: ${pessoa['nome']}');
            print('E-mail: ${pessoa['email']}');
            print('Telefone: ${pessoa['telefone']}');
            print('-'  * 70);
          }
            stdout.write('Precione Enter para voltar para o menu');
            stdin.readLineSync();
            print("\x1B[2J\x1B[0;0H");
        
        case '3':
          print("\x1B[2J\x1B[0;0H");
          print('== BUSCAR ==');
          stdout.write('Digite o nome: ');
          String? nome = stdin.readLineSync();
          List<Map<String, String?>> filtroNome = agenda.where((cadastro) => cadastro.containsValue(nome)).toList();
          print('-'  * 70);
          for (var pessoa in filtroNome){
            print('Nome: ${pessoa['nome']}');
            print('E-mail: ${pessoa['email']}');
            print('Telefone: ${pessoa['telefone']}');
            print('-'  * 70);
          }
            stdout.write('Precione Enter para voltar para o menu');
            stdin.readLineSync();
            print("\x1B[2J\x1B[0;0H");

        case '4':
          print("\x1B[2J\x1B[0;0H");
          print('== ATUALIZAR ==');  
          stdout.write('Digite o nome que deseja alterar os dados: ');
          String? nome = stdin.readLineSync();
          for (var item in agenda){

            if (item.containsValue(nome)){
              stdout.write('O que deseja alterar de ${nome}? (nome/telefone/email) ');
              String? opcao = stdin.readLineSync();
              if(opcao == 'nome'){
                stdout.write('Digite o novo nome: ');
                String? novoNome = stdin.readLineSync();
                item['nome'] = novoNome;
              } else if(opcao == 'telefone'){
                  stdout.write('Digite o novo telefone: ');
                  String? novoTelefone = stdin.readLineSync();
                  item['telefone'] = novoTelefone;
              }else if (opcao == 'email'){
                stdout.write('Digite o novo email: ');
                String? novoEmail = stdin.readLineSync();
                item['email'] = novoEmail;
              }else{
                print('Opção inválida');
                break;
              }
               print('Dados atualizados com sucesso');
               print("\x1B[2J\x1B[0;0H");
            }  
          }
          
        case '5':
          print("\x1B[2J\x1B[0;0H");
          print('== REMOVER ==');

          for (var pessoa in agenda){
            print('Nome: ${pessoa['nome']}');
            print('E-mail: ${pessoa['email']}');
            print('Telefone: ${pessoa['telefone']}');
            print('-'  * 70);
          }

          stdout.write('Digite o nome: ');
          String? nome = stdin.readLineSync();
          List<Map<String, String?>> filtroNome = agenda.where((cadastro) => cadastro.containsValue(nome)).toList();
          print('-'  * 70);
          
            for (var pessoa in filtroNome) {
            agenda.remove(pessoa);
          }
            print('Contato removido com sucesso.');
            stdout.write('Precione Enter para voltar para o menu');
            stdin.readLineSync();
            print("\x1B[2J\x1B[0;0H");

        case '6':
          print('Programa finalizdo');
          break;

        default:
          print('Valor inválido');
      }
    }
  }
}