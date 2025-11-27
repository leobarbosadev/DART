//Criação de Frase com Filtro
//Dada uma lista de strings, crie uma única string (frase) concatenando apenas as palavras que terminam com a letra 'R' (maiúscula ou minúscula).
//As palavras devem ser separadas por um espaço na frase final.
import 'dart:io';


void main(){
  while(true){
    List<String> listaPalavras = ['amar', 'comer', 'TRABALHAR', 'cama', 'bola', 'rato', 'combinar'];

    List<String> novaLista = listaPalavras.where((palavra)=> palavra.endsWith('R') || palavra.endsWith('r')).toList();

    String frase = novaLista.join(' ');

    print('Nova frase: ${frase}');


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
