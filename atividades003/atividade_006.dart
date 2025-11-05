//Filtragem Dupla em Lista de Palavras
//Dada uma lista de palavras (strings), filtre e colete em uma nova lista apenas as palavras que satisfazem duas condições simultâneas:
//1) o comprimento da palavra deve ser maior que 5 caracteres;
//2) a palavra deve começar com a letra 'A' (maiúscula ou minúscula).
import 'dart:io';


void main(){
  while(true){
    List<String> listaPalavras = ['Bola', 'araras', 'Alemanha', 'aula'];

    List<String> novaLista = listaPalavras.where((palavra)=> palavra.length > 5 && (palavra.startsWith('A') || palavra.startsWith('a'))).toList();

    print('Nova lista: $novaLista');

    print('');
    stdout.write('Desja continuar? (s/n) ');
    String? escolha = stdin.readLineSync();

    if (escolha == null || escolha.trim().isEmpty) {
      print('Valor inválido!!!');
      print('');
      continue;
    }
    if (escolha.toLowerCase() == 's') {
      continue;
    } else {
      print('Programa encerrado!!!');
      break;
    }
  }
}